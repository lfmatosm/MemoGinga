--Constantes:
--Define o numero total de imagens disponiveis para exibicao:
TOTAL_IMGS = 12
--Inicializa o contador de imagens exibidas.
local cont = 0
--Inicializa o numero de acertos do jogador.
local acertos = 0
--Inicializa a variavel que armazena o momento de inicio de uma partida.
local inicio_jogo = os.time()
--Variavel para definir o nivel de dificuldade do jogo.
local nivel = 1

local imgs = {-1, -1, -1, -1, -1}; local ATUAL = 5;

--Posta um evento NCLua a partir dos parametros passados.
function posta_evento(classeEvento, tipoEvento, nomeEvento, valorEvento)
	local novoEvt = {
		class = classeEvento;
		type = tipoEvento;
		name = nomeEvento;
		value = valorEvento;
	}
	novoEvt.action = 'start'
	event.post(novoEvt)
	print("LUA - posta_evento(): "..classeEvento..", "..tipoEvento..", "..nomeEvento..", "..valorEvento.. " -> 'start' postado")
	novoEvt.action = 'stop'
	event.post(novoEvt)
	print("LUA - posta_evento(): "..classeEvento..", "..tipoEvento..", "..nomeEvento..", "..valorEvento.. " -> 'stop' postado")
end

--Sorteio com refino que aumenta a probabilidade de uma imagem ser seguida por ela mesma (algo geralmente improvavel caso
--nao exista algum tipo de refino).
function sorteia_imgs(totalImgs, nivelJogo, vetorImagens)
	if (vetorImagens[ATUAL] == -1) then math.randomseed(os.time()) end
	local limiteInf = 1; local limiteSup = totalImgs
	local margem = 2
	if nivelJogo == 2 or nivelJogo == 3 then margem = 6 end 
	local pivo = math.random(limiteInf, limiteSup)
	local min = 1
	local max = 12
	if pivo <= margem then
		min = pivo
		max = pivo+margem
	else
		min = pivo-margem
		max = pivo
	end
	for i=1,nivel do vetorImagens[i] = math.random(min, max) end
	vetorImagens[ATUAL] = math.random(min, max)
	return vetorImagens
end

--Atualiza o numero de acertos do jogador.
function atualiza_acertos(evt, nivelJogo, vetorImagens)
	local tecla = evt.value
	--Repare que o dado 'evt.value' do NCLua eh uma string. Portanto 'tecla' tambem eh uma string e a comparacao deve ser como tal.
	if tecla == "1" then
		for i=1,nivelJogo do
			if (vetorImagens[i] == vetorImagens[ATUAL]) then
				acertos = acertos+1
				return
			end
		end
	elseif tecla == "0" then
		for i=1,nivelJogo do
			if (vetorImagens[i] == vetorImagens[ATUAL]) then return end
			if i == nivelJogo then
				acertos = acertos+1
				return
			end
		end
	end
end

--Mostra o numero de acertos e o tempo de jogo do jogador ao fim de cada partida.
function mostra_acertos_e_tempo(tabelaTempo)
	width, height = canvas:attrSize()
	canvas:attrFont("vera", 100)
	canvas:attrColor("black")
	local acertos_porcent = 0
	acertos_porcent = (acertos/(TOTAL_IMGS))*100
	local msg_acertos = string.format("%0.1f%%", acertos_porcent)
	canvas:drawText(30, 0, msg_acertos)
	canvas:attrFont("vera", 40)
	canvas:attrColor("black")
	local idioma = "pt"
	--local idioma = settings.service.gameLanguage
	--print("\nLUA - Idioma: "..settings.system.language.."\n")
	local tempoTitulo = ""
	if idioma == "pt" then tempoTitulo = "Tempo total:"
	elseif idioma == "en" then tempoTitulo = "Total time:"
	else tempoTitulo = "Tiempo total:" end
	local msg_tempo = string.format("%s %02.f:%02.f", tempoTitulo, tabelaTempo.min, tabelaTempo.seg)
	--canvas:drawText(width-200, height-230, msg_tempo)
	canvas:drawText(width-350, height-100, msg_tempo)
	canvas:flush()
	local str = "Porcentagem de acertos: "..msg_acertos.."\t"..msg_tempo.."\n___________________________________________\n"
	return str
end

--Mostra o cronometro da tela de jogo inicial, tela que exibe uma primeira imagem a ser comparada com a seguinte.
--PROBLEMATICO. NAO USAR.
function mostra_cronometro(tabelaCron)
	limpa_canvas()
	canvas:attrFont("vera", 36)
	canvas:attrColor("white")
	local msg_cron = string.format("%02.f:%02.f", tabelaCron.min, tabelaCron.seg)
	canvas:drawText(250, 250, msg_cron)
	canvas:flush()
end

--Preenche o trecho do canvas deste NCLua a partir da posicao (x = 200, y = 250) com uma cor escura, 
--possibilitando redesenhos/reescritas nesta area sem sobreposicao de conteudo visivel.
--APRESENTA PROBLEMAS: às vezes a imagem inicial não é exibida. Tenho quase
--ceterza de que esse problema tem a ver com essa função aqui.
function limpa_canvas()
	canvas:attrColor('black')
	canvas:drawRect('fill', 200, 250, canvas:attrSize())
end

--Atualiza o tempo decorrido desde um dado 'tempoInicio' ate o momento em que esta funcao eh chamada.
function atualiza_tempo_decorrido(tempoInicio)
	local tempoFim = os.time()
	--Obtem horas, minutos e segundos desde 'tempoInicio' ate 'tempoFim'.
	local tempoTotal = tempoFim - tempoInicio
	local horas = tempoTotal / (60*60)
	local minutos = (tempoTotal % (60*60)) / (60)
	local segundos = (tempoTotal % (60*60)) % (60)
	--Retorna uma tabela com os dados de tempo obtidos acima.
	return { 
		hor = horas;
		min = minutos;
		seg = segundos;
	}
end

--Salva a pontuação e tempo da partida ao seu fim num arquivo especificado.
function salva_pontuacao(pontuacaoETempoJogo, nivelJogo, arquivoDeLog)
	local arq = io.open(arquivoDeLog, "a")
	arq:write("Nivel: "..nivelJogo.."\n")
	arq:write(pontuacaoETempoJogo)
	arq:flush()
	arq:close()
end

--Funcao tratadora de eventos.
function handler(evt)
	print("\nLUA - 'game_script' iniciado")
	if evt.class ~= 'ncl' then return end
	if evt.type ~= 'attribution' then return end
	--Para eventos de mudanca de nivel de jogo.
	if evt.name == 'nivel' then 
		nivel = tonumber(evt.value)
		--posta_evento('ncl', 'attribution', 'nivel', nivel)
	end
	--Se o evento eh de atribuicao a variavel 'valor_sorteado' do no Lua, entao:
	if evt.name == 'opcao' then
		print("\nLUA - evento de atribuicao disparado")
		atualiza_acertos(evt, nivel, imgs)
		imgs = sorteia_imgs(TOTAL_IMGS, nivel, imgs)
		cont = cont + 1
		print("LUA - Contagem = " .. cont)
		posta_evento('ncl', 'attribution', 'counter', cont)
		for i=1,nivel do
			posta_evento('ncl', 'attribution', 'figSorteada'..i, imgs[i])
		end
		posta_evento('ncl', 'attribution', 'figSorteada'..nivel+1, imgs[ATUAL])
		print("LUA - Acertos = " .. acertos)
	end
	--Se o evento tem como nome 'fim_de_jogo', mostra o numero de acertos do jogador na partida:
	if evt.name == 'fim_de_jogo' then
		print("\nLUA - evento de exibicao de pontos/tempo de jogo disparado")
		local tempo_total = atualiza_tempo_decorrido(inicio_jogo)
		local pontuacao_e_tempo = mostra_acertos_e_tempo(tempo_total)
		salva_pontuacao(pontuacao_e_tempo, nivel, "LOG.txt")
	end
end

event.register(handler)
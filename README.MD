# MemoGinga
Um jogo cognitivo simples desenvolvido para o middleware Ginga ITV.

## Procedimentos

Os procedimentos a seguir descrevem os passos necessários para execução do "MemoGinga" por meio de máquina virtual.

### Pré-requisitos

O programa foi testado usando o programa de virtualização de sistemas VMWare e com a imagem Ginga-NCL Virtual STB 0.12.4 do middleware Ginga-NCL. Desde que VMWare e a imagem mencionada sejam utilizados, não haverá diferenças na execução do jogo em sistemas Unix, Windows ou MacOS. Como pré-requisito, é necessário possuir uma imagem da máquina Ginga-NCL para ser usada no VMWare e possibilitar a execução do jogo.

* [Ginga-NCL Virtual STB 0.12.4](http://www.gingancl.org.br/sites/gingancl.org.br/files/ferramentas/ubuntu-server10.10-ginga-v.0.12.4-i386.zip) - Imagem Ubuntu 10.10 Server do middleware Ginga-NCL, utilizada na implementação e testes do jogo. Inclui o Ginga-NCL C++ v. 0.12.4. Pode ser usada em qualquer sistema operacional com qualquer versão do VMWare.

### Windows

Para Windows, é necessário instalar os programas:

* [VMWare Workstation 12](https://drive.google.com/file/d/1396C-48CXxq8KcNqkhOKdA_g4Ra-yeXB/view?usp=sharing) - Programa de virtualização de sistemas.
* [WinSCP](https://winscp.net/eng/index.php) - Cliente SSH/FTP para envio dos arquivos à máquina Ginga baixada acima.
* [PuTTY](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html) - Cliente para execução de comandos na máquina Ginga, incluindo para execução da aplicação.

### Ubuntu

Já para Ubuntu, são necessários os programas:

* [VMWare Workstation Player](https://my.vmware.com/web/vmware/info?slug=desktop_end_user_computing/vmware_workstation_pro/12_0) - Programa de virtualização de sistemas. A versão Workstation 12 Player foi a utilizada. Instruções (em Português) para o processo longo de instalação da versão 12 no Ubuntu podem ser encontradas [aqui](https://www.blogopcaolinux.com.br/2016/12/Instalando-o-VMware-Workstation-Player-no-Ubuntu.html).
* [FileZilla >= 3.15.0.2](https://filezilla-project.org/download.php) - Programa usado para fazer envio/upload dos arquivos do jogo na máquina virtual.
* [OpenSSH Server](https://www.openssh.com) - Utilizado para conexão com a máquina virtual Ginga-NCL. Pode ser instalado pelo bash utilizando ```sudo apt-get install openssh-server```

#### Executando (no Ubuntu)

As instruções detalhadas abaixo referem-se a execução do programa em Ubuntu. Os passos de conexão com a máquina virtual Ginga, envio por SSH da aplicação para a máquina e por fim a execução do jogo são similares entre os sistemas, variando as aplicações utilizadas.

1. Considerando que os programas da seção anterior já estão instalados, deve-se abrir o VMWare Workstation 12 Player e abrir o arquivo ```ubuntu-server10.10-ginga-i386.vmx``` que se encontra no arquivo compactado da imagem do Ginga-NCL. Ao iniciar a máquina virtual, serão mostrados na tela nome de usuário e senha para conexão à máquina virtual via SSH.

2. Utilizando o FileZilla, deve-se abrir uma conexão com a máquina Ginga-NCL. Para isso, utiliza-se o username e senha mostrados na tela da máquina virtual no passo anterior.

3. Com a conexão aberta no FileZilla, deve-se fazer upload dos arquivos do jogo. Seleciona-se a pasta desejada e o diretório da máquina virtual para onde deseja-se enviá-la.

4. Após ter feito upload dos arquivos, deve-se criar uma conexão SSH para executar o jogo. Para tal, no terminal do Ubuntu digita-se:

```
ssh username@ip
```

Onde username e IP são exibidos na tela inicial da máquina virtual vista no passo 1.

5. Caso executado corretamente, a conexão será iniciada mostrando:

```
Ginga-NCL Virtual STB 0.12.4
Ubuntu 10.10 Server

root@ip's password: 
```

Onde deve-se digitar a senha encontrada na tela da máquina virtual no passo 1.

6. Por fim, a execução da aplicação será feita mediante comando análogo ao abaixo. Suponha que a pasta do jogo tenha sido enviada ao diretório ```/misc/ncl30/``` da máquina virtual:

```
/misc/launcher.sh /misc/ncl30/MemoGinga-rev0.4/main.ncl 
```

A aplicação será iniciada dentro da máquina virtual. Para finalizar sua execução a qualquer momento, pode-se digitar Fn+F10 no teclado.

## Autores

* **Luiz Felipe de Melo** - *Implementação, design, documentação.* - [lffloyd](https://github.com/lffloyd) - lfmatosmelo@midiacom.uff.br
* **Mayara Helena dos Santos** - *Implementação, design.* - [mayaralena](https://github.com/mayaralena) - mayarahelena@midiacom.uff.br

Veja a lista de [contribuidores](https://github.com/lffloyd/MemoGinga/contributors) participantes no projeto.

## Licença

Projeto licenciado sob licença MIT - leia [LICENSE.md](https://github.com/lffloyd/MemoGinga/blob/master/LICENSE) para maiores detalhes.

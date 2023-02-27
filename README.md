
# Bootcamp DIO - Linux do Zero

Arquivos de Bash Script para IaC criados no curso de Linux da DIO.me

##


## Mentoria
- [@denilsonbonatti](https://github.com/denilsonbonatti)

##
# Projeto 1 - IaC Linux


## Especificando permissões dos diretórios....

### chown root:

```http
  chown root:"nome do grupo" /"nome do diretorio"
```

| chmod   | permissões   | Descrição                           |
| :------ | :--- | :---------------------------------- |
| `/ADM` | `755` | Diretório do Administração |
| `/PDV` | `777` | Diretório do Ponto de Vendas |
| `/FIN` | `755` | Diretório do Financeiro |
| `/TI`  | `777` | Diretório do TI |

### Criando grupos e usuários...

```http
  useradd "nome do usuário" -m -s /bin/bash -G "grupo"
```
| Groups       | Users            |
| ------------ | -----------------| 
| GRP_PDV      | lucas |
| GRP_TI       | suporte, rodrigo |
| GRP_ADM      | suporte, rodrigo, gabriela |
| GRP_FIN      | pricila |

##
# Projeto 2 - IaC Linux


## Atualizando o servidor e instalando apache2 e unzip...

```bash
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
```


## Baixando e copiando os arquivos da aplicação...

```bash
cd /tmp
wget https://github.com/rsgamboa/MangaFlix/archive/refs/heads/main.zip
unzip main.zip
mv linux-site-dio-main/* /var/www/html/
rm -rf linux-site-dio-main/
```
## Referências

 - [Ubuntu Forum](https://ubuntuforum-br.org/)
 - [Viva ao Linux](https://www.vivaolinux.com.br/)
 - [Linuxize](https://linuxize.com/)


## Stack utilizada

**Linux:** Shell


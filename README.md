
# Projeto IaC Linux

Arquivos de Bash Script para IaC criados no curso de Linux da DIO.me



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


## Referências

 - [Ubuntu Forum](https://ubuntuforum-br.org/)
 - [Viva ao Linux](https://www.vivaolinux.com.br/)
 - [Linuxize](https://linuxize.com/)


## Stack utilizada

**Linux:** Shell


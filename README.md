# [Biometria - CIGS]
Projeto desenvolvido durante a operação Ricardo Franco 2017 para controle de efetivos nas bases avançadas do Centro de Instrução de Guerra na Selva (CIGS).

## Visão Geral
![Arquitetura do Sistema]: (./screenshots/arquitetura_sistema.png)

## Dependências
    *   Python 2.7;
    *   Ubuntu 16.04;
    *   Servidor Apache2;
    *   Navegador Google Chrome;
    *   MySQL versão 5.7.
    
## Instalação
Para instalar os dois subsistemas, é necessário clonar este repositório através do comando:
```
$ git clone https://github.com/Augusto12/Biometria-CIGS.git
```
Ou fazer o download da pasta do projeto.
Após isso, sendo o sistema compostos por dois subsistemas que operam em equipamentos físicos distintos, cada subsistema deve ser instalado em sua respectiva máquina.
- O banco de dados deve ser importado através do comando:
```
>mysqldump -u [admin do banco] - p [nome do banco] < dump.sql 
```
- Para o subsistema a nível de gestão, basta copiar a pasta clonada para o servidor Apache e acessar através de um navegador.
  - OBS: caso o banco de dados não esteja hospedado no mesmo servidor das páginas WEB, é necessário configurar o IP para estabelecer a comunicação entre as partes;

## Uso
- Subsistema a nível de Operação:
Descrever aqui o funcionamento....

- Subsistema a nível de Gestão:

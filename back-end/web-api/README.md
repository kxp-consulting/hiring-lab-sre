# KXP SRE Hiring Lab: Web API

Esta é uma API de exemplo construída em Flask (Python) que armazena e retorna em um banco de dados os "posts" da aplicação. 

## Executando a API

Para rodar localmente é necessário instalar as dependencias e executar o script de servidor local.

Pré-requisitos:
- python 3.9 e pip (gerenciador de pacotes do python)
- Demais requisitos são providos no arquivo de deps (requirements.txt)

Instalando as deps

```bash
pip3 install -r requirements.txt
```
Rodando localmente

```bash
python3 app.py
```

## Atualizando o banco de dados

Há um script que apaga e cria novamente todas as tabelas (nesse caso é uma única tabela). Para isso, basta executar o script abaixo: 

```bash
python3 setup.py
```




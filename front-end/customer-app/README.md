# KXP SRE Hiring Lab: Customer App

Este é um SPA criado em ReactJS para simular uma comunição simples com o back-end. Ele simula 2 funcionalidades apenas:

- No carregamento da página, ele faz um GET no endpoint da API e recupera os "posts".
- No click do botão "send", faz um POST enviando os dados para a API

## Executando o app

Para rodar localmente é necessário instalar as dependencias e executar o script de servidor local.

Pré-requisitos:
- node 16
- npm 8

Instalando as deps

```bash
npm install
```
Rodando localmente

```bash
npm start
```
## Gerando um build de produção

Para implementação, basta executar o script de build, conforme a seguir:

```bash
npm run build
```

Esse script irá gerar uma pasta chamada ./build contendo todos os arquivos compilados a aplicação. Como trata-se de um SPA, estes são arquivos estáticos (runtime é o browser do usuário).


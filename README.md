# KXP SRE Hiring Lab
Olá caro participante estamos felizes da sua disposição para realizar esse teste, ele não será dificil mas envolverá muita atenção.

O laboratório foi testado, porém podem haver mudanças nas tecnologias envolvidas, então certifique-se de verificar os erros apresentados com cuidado.

Não é necessário alterar o código da aplicação, apenas as configurações do runtime, infraestrutura, etc.

Cada componente possui mais informações a respeito da compilação e pré-reqs diretamente em sua raíz.

## Sua Meta
Sua meta é implementar uma aplicação simples fornecida nesse repositório. Você **não precisa** automatizar o processo de deployment. Esse app conta com:

- 1 front-end web feito em Reactjs
- 1 back-end feito em python (Flask) e um banco de dados postgreSQL
- Infraestrutura provida pelo Azure

A aplicação está funcionando e disponível no endereço a seguir: 

https://strafael2na.z13.web.core.windows.net/

O check-list das atividades a seguir pode ajudar a guiá-lo pelo laboratório. Existem algumas atividades que não estão mapeadas abaixo, pois são justamente os ajustes necessários para que a aplicação funcione corretamente.

### Infrastructure

- [ ] Ajustar e implementar a definição do Terraform no resource group definido.

### Front-end Web
- [ ] Compilar o front-end reactjs (customer-app)
- [ ] Publicar o front-end (customer-app) em um storage account

### Back-end
- [ ] Publicar as alterações do banco de dados no PgSQL
- [ ] Publicar a web-api no app service


## Referências
Separei alguns links úteis caso tenha alguma tecnologia envolvida que você não conheça.

- [Terraform no Azure](https://docs.microsoft.com/en-us/azure/developer/terraform/get-started-cloud-shell-bash?tabs=bash#authenticate-to-azure-via-a-microsoft-account)
- [PostgreSQL Flexible Server documentation](https://docs.microsoft.com/en-us/azure/postgresql/flexible-server/)
- [Deploy de um app Python no App Service](https://docs.microsoft.com/en-us/azure/app-service/quickstart-python?tabs=flask%2Cwindows%2Cazure-portal%2Cterminal-bash%2Cvscode-deploy%2Cdeploy-instructions-azportal%2Cdeploy-instructions-zip-azcli)
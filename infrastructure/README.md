# KXP SRE Hiring Lab: Infraestrutura

A infraestrutura da aplicação consiste em:

- 1 servidor de banco de dados postgres
- 1 servidor web em formato PaaS (Azure App Service)
- 1 blob storage para armazenamento dos arquivos estáticos

Para simplificar o laboratório, disponibilizamos essa configuração em terraform para que você possa criar/recriar o ambiente com facilidade.

Para executar esse teste você precisa ter instalado:

- terraform > v1.1.5
- az-cli  > 2.35.0

Você precisará logar no azure com a conta que foi convidada anteriormente. Você receberá acesso a um resource group onde devem ser implementado o laboratório.
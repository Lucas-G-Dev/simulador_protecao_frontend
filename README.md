# Frontend do Simulador

Site estático do simulador de proteção veicular.

## Como funciona

- O frontend é servido como site estático.
- O arquivo principal é Simulador_FIPE_Custo_Diario.html.
- A URL do backend vem da variável de ambiente `SIMULADOR_API_BASE`.
- O container gera um `env.js` na inicialização e a página lê esse valor automaticamente.

## Execução local

Abra Simulador_FIPE_Custo_Diario.html no navegador ou sirva a pasta com qualquer servidor estático.

## Deploy no Easypanel

1. Crie um novo serviço do tipo App.
2. Conecte o repositório GitHub.
3. Use o Dockerfile da raiz.
4. A aplicação escuta na porta 80.
5. Aponte o domínio do frontend para o serviço.
6. Configure a variável de ambiente `SIMULADOR_API_BASE` com a URL pública do backend.

## Exemplo

https://api.seudominio.com

Depois disso, salve e faça o deploy.


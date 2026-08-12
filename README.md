# Frontend do Simulador

Site estático do simulador de proteção veicular.

## Como funciona

- O frontend é servido como site estático.
- O arquivo principal é Simulador_FIPE_Custo_Diario.html.
- A URL do backend é configurada dentro da própria página ou via query string ?api=.
- O navegador salva a URL da API em localStorage.

## Execução local

Abra Simulador_FIPE_Custo_Diario.html no navegador ou sirva a pasta com qualquer servidor estático.

## Deploy no Easypanel

1. Crie um novo serviço do tipo App.
2. Conecte o repositório GitHub.
3. Use o Dockerfile da raiz.
4. A aplicação escuta na porta 80.
5. Aponte o domínio do frontend para o serviço.
6. No campo de URL da API, informe a URL pública do backend.

## Exemplo

https://api.seudominio.com

Depois disso, salve e clique em Testar conexão.


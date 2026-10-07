# Publicar o painel online (uso interno)

## Opção recomendada: Streamlit Community Cloud

1. Crie um repositório **privado** no GitHub (não público — a planilha tem dados da empresa).
2. Envie só a pasta `controle de gastos galpoes` (ou o repo inteiro privado).
3. Em [share.streamlit.io](https://share.streamlit.io): **New app** → repo privado → `app.py`.
4. Em **Advanced settings → Secrets**, cole o conteúdo de `.streamlit/secrets.toml.example` com valores reais:
   - `omie.app_key` / `omie.app_secret` (somente leitura no Omie)
   - `auth.habilitado = true` e `auth.senha` (senha compartilhada da equipe)
5. Faça upload da planilha `data/CUSTOS OLARIA.xlsx` no repo **ou** use volume/secrets — em Cloud, inclua o xlsx no repo **privado** ou substitua por link seguro.

## Dados sensíveis — checklist

| Item | Ação |
|------|------|
| Credenciais Omie | Só em **Secrets** / `.env` local, nunca no Git público |
| Planilha de custos | Repo **privado** ou arquivo fora do Git + sync controlado |
| URL do app | Com `auth.habilitado`, quem não souber a senha não entra |
| API Omie | Apenas métodos **somente leitura** (sem incluir/alterar/excluir) |
| Backup | Pasta `backup/` local; Cloud: commits no repo privado |

## Omie no painel

- Botão **Atualizar** (cabeçalho): recarrega planilha + sync Omie → aba **Faturamento** (contas **recebidas**).
- Barra lateral **Sincronizar Omie (min)**: repetir sync automaticamente.
- **Despesas (Lançamentos)** continuam no Excel até mapearmos categorias Omie → linhas do cadastro.

## Alternativas (mais controle)

- **PC/servidor Windows** na rede da empresa + `Iniciar Dashboard.bat` + VPN (sem expor na internet).
- **Azure / VPS** com Docker + nginx + login corporativo (Google Workspace / Microsoft).

## Local (desenvolvimento)

- Credenciais: arquivo `.env` na pasta pai `RELATORIOS AUTOMATICOS` (já usado pelos scripts Omie).
- Ou copie `.streamlit/secrets.toml.example` → `.streamlit/secrets.toml`.

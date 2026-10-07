# Controle de gastos galpões

Dashboard **Streamlit somente leitura**, conectado ao Excel **CUSTOS OLARIA** (lançamentos, faturamento, cadastro).

## Estrutura

| Pasta / arquivo | Função |
|-----------------|--------|
| `data/CUSTOS OLARIA.xlsx` | Planilha principal (pode substituir pela sua cópia atualizada) |
| `app.py` | Dashboard web |
| `planilha_io.py` | Leitura do Excel (gravação desativada no painel) |
| `orcamento.py` | Orçado a partir do Cadastro (mensal, anual, semestral) |
| `Iniciar Dashboard.bat` | Atalho para abrir o painel no navegador |

## Como usar

1. Dê duplo clique em **`Iniciar Dashboard.bat`** (ou `streamlit run app.py` nesta pasta).
2. Na barra lateral, escolha o **período** (ano, intervalo ou um mês) e filtros opcionais.
3. Edite valores **somente no Excel** (`data/CUSTOS OLARIA.xlsx`); salve e use **Atualizar agora** (ou aguarde o recarregamento automático).

## Planilha

- **Cadastro**: despesas fixas, categorias, periodicidade.
- **Lançamentos**: valores **realizados** (pagos) mês a mês.
- **Faturamento**: receitas mês a mês.
- **Orçado**: opcional na planilha; o painel não exibe orçamento.

## Galpão OLARIA

O projeto inicia com o galpão **OLARIA**. Para outro galpão, copie a pasta, renomeie `GALPAO_NOME` em `config.py` e use outro arquivo em `data/`.

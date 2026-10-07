@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo Controle de gastos galpoes - Streamlit
echo Feche o Excel se CUSTOS OLARIA.xlsx estiver aberto.
python -m py_compile app.py
if errorlevel 1 (
    echo ERRO: app.py com erro de sintaxe. Veja a mensagem acima.
    pause
    exit /b 1
)
python -m pip install -q -r requirements.txt
echo.
echo Abrindo dashboard no navegador...
echo Se nao abrir sozinho, use o endereco que aparecer abaixo ^(geralmente http://localhost:8501^)
echo Feche esta janela para encerrar o dashboard.
echo.
python -m pip install -q plotly
echo.| python -m streamlit run app.py --server.port 8501 --browser.gatherUsageStats false
pause

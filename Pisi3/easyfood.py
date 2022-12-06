import streamlit

streamlit.set_page_config(
  page_title="EasyFood Management",
  layout="wide",
  menu_items = {
    "About": "Aplicativo para uma vida saudável e qualidade de vida mais prática",
    "Equipe": "Camila de Moraes, Carlos Vinicius, Celso Soares, Gabriel Larena e Maria Luisa Campos."
  }
)

jaAdicionouArquivo = streamlit.text_input('Já adicionou o arquivo csv Recipes.csv na pasta raiz? [S/N]')

streamlit.markdown('Rodou!')
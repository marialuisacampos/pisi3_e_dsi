#import streamlit as st
#import pandas_profiling
#import pandas as pd
#from pandas_profiling import ProfileReport
import pandas as pd
import pandas_profiling
import streamlit as st

from streamlit_pandas_profiling import st_profile_report



st.set_page_config(
  page_title="EasyFood Management",
  layout="wide",
  menu_items = {
    "About": "Aplicativo para uma vida saudável e qualidade de vida mais prática",
    #"Equipe": "Camila de Moraes, Carlos Vinicius, Celso Soares, Gabriel Larena e Maria Luisa Campos."
  }
)

data_file = 'recipes'
df = pd.read_csv(f'data/{data_file}.csv', sep=',')

pr = df.profile_report()
st_profile_report(pr)


jaAdicionouArquivo = st.text_input('Já adicionou o arquivo csv Recipes.csv na pasta raiz? [S/N]')

st.markdown('Rodou!')
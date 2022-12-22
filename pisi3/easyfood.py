import pandas as pd
import pandas_profiling
import streamlit as st
import numpy as np

from streamlit_pandas_profiling import st_profile_report


def datasetInfo(datafile):
  st.markdown('Saber o tamanho da base (linhas x colunas)')
  st.write(datafile.shape)
  st.markdown('Verificar valores nulos e tipos de dados')
  st.write(datafile.info())
  st.markdown('Verificando a existencia de valores nulos')
  st.write(datafile.isnull().sum())
  st.markdown('Entendo melhor os valores nulos')
  st.write(datafile['RecipeCategory'].value_counts())
  st.markdown('Analisando informações estatisticas')
  st.write(datafile.describe())
  

def removeDataNotUsed(datafile):
  return datafile[
    ['Name',
     'PrepTime', 
     'Description', 
     'RecipeCategory', 
     'Keywords', 
     'RecipeIngredientQuantities', 
     'RecipeIngredientParts', 
     'RecipeInstructions'
     ]
    ]

def removeNullValues(datafile):
  df = datafile.dropna(subset=
    ['Name',
     'PrepTime', 
     'Description', 
     'RecipeCategory', 
     'Keywords', 
     'RecipeIngredientQuantities', 
     'RecipeIngredientParts', 
     'RecipeInstructions'
     ])
  return df

def grafic():
  st.markdown('Grafico')
  chart_data = pd.DataFrame(
    np.random.randn(20, 3),
    columns=['Name', 'PrepTime', 'RecipeCategory']
  )
  st.bar_chart(chart_data)



st.set_page_config(
  page_title="EasyFood Management",
  layout="wide",
  menu_items = {
    "About": "Aplicativo para uma vida saudável e qualidade de vida mais prática",
    #"Equipe": "Camila de Moraes, Carlos Vinicius, Celso Soares, Gabriel Larena e Maria Luisa Campos."
  }
)

data_file = 'recipes_sample'
df = pd.read_csv(f'data/{data_file}.csv', sep=',')
df_clean = removeDataNotUsed(df)
df_clean = removeNullValues(df_clean)
datasetInfo(df_clean)
grafic()



pr = df_clean.profile_report()
st_profile_report(pr)


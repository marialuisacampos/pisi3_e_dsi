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
  st.markdown('Entendo melhor a quantidade de valores da coluna')
  st.write(datafile['RecipeCategory'].value_counts())
  st.markdown('Analisando informações estatisticas')
  st.write(datafile.describe())
  

def removeColumnsNotUsed(datafile):
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


def recipeCategoryTratament(datafile):
  # st.write(len(datafile['RecipeCategory'][0]))
  for i, recipe in enumerate(datafile['RecipeCategory']):
    if len(recipe) > 30:
      print("$$$$$$")
      print(recipe)
      print(datafile['RecipeCategory'][i])
      datafile.drop(datafile['RecipeCategory'][i], axis=1, inplace=True)
  return datafile

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
df = removeColumnsNotUsed(df)
df = removeNullValues(df)
# df = recipeCategoryTratament(df)
datasetInfo(df)
grafic()



pr = df.profile_report()
st_profile_report(pr)


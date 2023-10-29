"""cantidadHoras = int(input("Cuantas horas trabajó? "))
valorHora = 150

if cantidadHoras > 40:
    print(f"Monto a pagar: $ {cantidadHoras * valorHora*1.5}")
else:
    print(f"Monto a pagar: $ {cantidadHoras * valorHora}")"""

"""valor = float(input("Ingresa un valor entre 0.0 y 1.0: "))
if valor < 0.0 or valor > 1.0:
    print("Error")
else:
    if valor >= 0.9:
        print("Sobresaliente")
    elif valor >= 0.8:
        print("notable")
    elif valor >= 0.7:
        print("bien")
    elif valor >= 0.6:
        print("suficiente")
    elif valor < 0.6:
        print("insuficiente")"""

"""import pandas as pd


#DataFrame es una table
pd.DataFrame({'Yes': [50, 21], 'No': [131, 2]})

pd.DataFrame({'Bob': ['I liked it.', 'It was awful.'],
              'Sue': ['Pretty good.', 'Bland.']},
             index=['Product A', 'Product B'])

#Series es como si fuera una columna sola de la tabla que crea DataFrame
pd.Series([30, 35, 40], index=['2015 Sales', '2016 Sales', '2017 Sales'], name='Product A')


readFile = pd.read_csv("data.csv")

#shape imprime las cantidad de filas y columnas
print(readFile.shape)
#head imprime las primeras 5 filas
print(readFile.head())

#Escribe en formato csv, en la ruta que se le pasa como parametro, el DataFrame que llama a la funcion to_csv()
readFile.to_csv("write.csv")

describeDF = readFile.describe()
describeDF.to_csv("describe.csv")"""

"""import requests
import pandas as pd
import json

# Replace with your target URL including the protocol (http/https)
url = "http://193.123.104.24:8080/B1iXcellerator/exec/ipo/.DEV.IVZ.EUROVIN.IVZ.Published/com.sap.b1i.dev.scenarios.setup/IVZ.EUROVIN/IVZ.Published.ipo/EurovinProd.IVZ.ItemStock"

try:
    # Make a GET request to the URL
    response = requests.get(url)

    # Check if the request was successful (status code 200)
    if response.status_code == 200:
        # Extract the text content from the response
        content = response.text

        # Remove square brackets from the beginning and end of the content
        content = content.strip("[]")

        # Split the content into individual JSON objects
        json_objects = content.split("},")

        # Reconstruct each JSON object and parse it
        data = []
        for json_obj in json_objects:
            # Add back the closing curly brace if it's missing
            if not json_obj.endswith("}"):
                json_obj += "}"

            # Parse the JSON
            try:
                obj = json.loads(json_obj)
                data.append(obj)
            except json.JSONDecodeError as e:
                print(f"Failed to parse JSON: {e}")

        # Create a DataFrame from the parsed data
        df = pd.DataFrame(data)

        # Replace 'output.xlsx' with your desired Excel file name
        excel_file = "output.xlsx"

        # Save the DataFrame to an Excel file
        df.to_excel(excel_file, index=False, engine="openpyxl")

        print(f"Data saved to {excel_file}")
    else:
        print(f"Failed to retrieve data. Status code: {response.status_code}")

except Exception as e:
    print(f"An error occurred: {e}")"""

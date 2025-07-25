# -*- coding: utf-8 -*-
"""
Created on Fri Jul 25 00:56:21 2025

@author: jeane
"""

import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# 1. Cargar los datos
df = pd.read_csv("who.csv")  # O "who2.csv"

# 2. Transformar a formato largo
who_long = df.melt(
    id_vars=["country", "iso2", "iso3", "year"],
    var_name="variable",
    value_name="cases"
)

# 3. Eliminar valores faltantes
who_long = who_long.dropna(subset=["cases"])

# 4. Extraer columnas: tipo, sexo, edad
who_long[["prefix", "type", "sex", "age"]] = who_long["variable"].str.extract(r"(new)_([a-z]+)_([mf])(\d+)")

# 5. Crear DataFrame final limpio
df = who_long.drop(columns=["variable", "prefix"])
df["cases"] = df["cases"].astype(int)

# 6. Filtrar solo tipo pulmonar positivo (más comparable)
df_sp = df[df["type"] == "sp"]

# 7. Tendencia global total (todos los tipos y sexos)
global_trend = df.groupby("year")["cases"].sum().reset_index()

plt.figure(figsize=(10, 5))
sns.lineplot(data=global_trend, x="year", y="cases", marker="o")
plt.title("Casos globales de tuberculosis por año")
plt.ylabel("Total de casos")
plt.xlabel("Año")
plt.tight_layout()
plt.show()

# 8. Tendencia por sexo (global)
sexo_trend = df.groupby(["year", "sex"])["cases"].sum().reset_index()

plt.figure(figsize=(10, 5))
sns.lineplot(data=sexo_trend, x="year", y="cases", hue="sex", marker="o")
plt.title("Casos globales de tuberculosis por sexo")
plt.ylabel("Total de casos")
plt.xlabel("Año")
plt.tight_layout()
plt.show()

# 9. Top 10 países con más casos acumulados
top_paises = df.groupby("country")["cases"].sum().nlargest(10).reset_index()

plt.figure(figsize=(10, 6))
sns.barplot(data=top_paises, x="cases", y="country", color="blue")
plt.title("Top 10 países con más casos acumulados de tuberculosis")
plt.xlabel("Total de casos")
plt.ylabel("País")
plt.tight_layout()
plt.show()

# 10. Evolución por grupo de edad (global)
edad_trend = df.groupby(["year", "age"])["cases"].sum().reset_index()

plt.figure(figsize=(12, 6))
sns.lineplot(data=edad_trend, x="year", y="cases", hue="age", palette="tab10")
plt.title("Evolución de casos por grupo de edad")
plt.xlabel("Año")
plt.ylabel("Casos")
plt.legend(title="Edad")
plt.tight_layout()
plt.show()

# 11. Evolución por país específico (ej. India)
pais_focal = "India"
df_india = df[df["country"] == pais_focal].groupby("year")["cases"].sum().reset_index()

plt.figure(figsize=(10, 5))
sns.lineplot(data=df_india, x="year", y="cases", marker="o", color="red")
plt.title(f"Casos de tuberculosis en {pais_focal}")
plt.xlabel("Año")
plt.ylabel("Casos")
plt.tight_layout()
plt.show()

# 12. Distribución por sexo y tipo de TB
sexo_tipo = df.groupby(["type", "sex"])["cases"].sum().reset_index()

plt.figure(figsize=(8, 6))
sns.barplot(data=sexo_tipo, x="type", y="cases", hue="sex")
plt.title("Distribución por tipo de tuberculosis y sexo")
plt.xlabel("Tipo de TB")
plt.ylabel("Casos")
plt.tight_layout()
plt.show()

# 13. Top 10 países por promedio anual de casos
prom_anual = df.groupby("country")["cases"].mean().nlargest(10).reset_index()

plt.figure(figsize=(10, 6))
sns.barplot(data=prom_anual, x="cases", y="country", color="purple")
plt.title("Top 10 países con mayor promedio anual de casos de TB")
plt.xlabel("Promedio anual de casos")
plt.ylabel("País")
plt.tight_layout()
plt.show()

# 14. Heatmap de casos por país y año (solo países con más de 8 años de datos)
tabla_heatmap = df.groupby(["country", "year"])["cases"].sum().unstack(fill_value=0)
tabla_heatmap = tabla_heatmap[tabla_heatmap.count(axis=1) > 8]  # filtrar países con pocos años

plt.figure(figsize=(14, 10))
sns.heatmap(tabla_heatmap, cmap="YlOrRd", linewidths=0.5)
plt.title("Heatmap de casos de tuberculosis por país y año")
plt.xlabel("Año")
plt.ylabel("País")
plt.tight_layout()
plt.show()













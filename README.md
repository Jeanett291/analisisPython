# analisisPython
En este proyecto se analizará una base de datos mediante el uso de Python

## Introducción
La tuberculosis sigue siendo una de las enfermedades infecciosas más letales a nivel mundial, especialmente en regiones con alta densidad poblacional y bajos niveles de acceso a salud pública, el presente reporte analiza una base de datos de la OMS (who.csv) procesada mediante Python, enfocándose en variables clave como país, sexo, edad y tipo de tuberculosis, con el objetivo de comprender tendencias, identificar focos críticos y proponer recomendaciones accionables.


## Análisis de Datos y Resultados

### 1.	Tendencia Global de Casos (1990–2020 aprox.)
La primera visualización muestra la evolución de los casos globales de TB por año, se observa una tendencia decreciente, especialmente después del año 2005, aunque con algunas variaciones cíclicas en años específicos, esta tendencia sugiere avances en políticas de control, diagnóstico y tratamiento, aunque persisten desafíos en regiones con altos niveles de pobreza o sistemas de salud debilitados, esta curva descendente apoya la continuidad de programas de vigilancia activa, pero también señala la necesidad de no relajar esfuerzos.

<img width="708" height="348" alt="Figure 2025-07-25 021352 (0)" src="https://github.com/user-attachments/assets/f226d8c7-7d57-4ff6-b014-62e78c370d1d" />


### 2. Comparación por Sexo
Se observa una diferencia sistemática en la cantidad de casos reportados entre hombres y mujeres, siendo los hombres los que presentan un número superior de casos en todos los años analizados, factores como mayor exposición ocupacional, diferencias biológicas, o barreras de acceso para mujeres en ciertos países podrían influir, esto apoya la idea de investigar causas estructurales y considerar programas de prevención segmentados por género.

<img width="708" height="348" alt="Figure 2025-07-25 021352 (1)" src="https://github.com/user-attachments/assets/8f0c51c0-ca93-4d29-857a-e9f3ab46dc97" />


### 3. Top 10 Países con Más Casos Acumulados
Los países con mayor número de casos acumulados son: 
1.	India
2.	China
3.	Indonesia
4.	Filipinas
5.	Pakistán
6.	Nigeria
7.	Bangladesh
8.	Sudáfrica
9.	Rusia
10.	Etiopía
La mayoría se encuentra en regiones con alta densidad poblacional, vulnerabilidad económica o sistemas de salud frágiles, la priorización en programas internacionales de ayuda y cooperación, podrían ayudar mitigar el impacto de enfermedades de grado alto.

<img width="708" height="420" alt="Figure 2025-07-25 021352 (2)" src="https://github.com/user-attachments/assets/73b45da9-4745-4cca-9556-86b5110817a9" />


### 4. Tendencias por Grupo de Edad
Los casos se distribuyen de forma desigual, se identifican picos importantes en personas entre 15 y 54 años, es decir, en edades productivas, esto tiene relevancia económica, como la pérdida de productividad, aumento de costos sanitarios y carga familiar, algunas recomendaciones podrían ser diseñar campañas de concientización y tamizaje laboral o escolar, especialmente en estas cohortes.

<img width="852" height="420" alt="Figure 2025-07-25 021352 (3)" src="https://github.com/user-attachments/assets/fcccbf0e-686c-4134-9bef-a9c2e08348c0" />


### 5. Evolución de Casos en India
India representa el país con mayor carga de TB en el mundo, se observa una reducción progresiva en los casos a lo largo del tiempo, aunque aún mantiene niveles críticos, es posible que las políticas nacionales han dado resultados, pero la magnitud del problema sigue siendo significativa.

<img width="706" height="348" alt="Figure 2025-07-25 021352 (4)" src="https://github.com/user-attachments/assets/be43e3e8-dd84-4227-b1c3-76eeec730c3e" />


### 6. Distribución por Tipo y Sexo
Se analizaron los casos por tipo de tuberculosis (por ejemplo, pulmonar positiva) y su distribución entre hombres y mujeres, la predominancia del tipo “sp” (smear-positive o pulmonar positiva), más frecuente en hombres, este tipo es el más infeccioso y representa mayor prioridad para control epidemiológico.

<img width="564" height="420" alt="Figure 2025-07-25 021352 (5)" src="https://github.com/user-attachments/assets/a936f938-28e2-4644-b947-862c335ccab6" />


### 7. Promedio Anual de Casos por País
Un enfoque complementario al total acumulado es el promedio anual de casos, esto permite identificar países con alta carga sostenida independientemente del tamaño poblacional, la India y algunos países africanos siguen encabezando este ranking.

<img width="708" height="420" alt="Figure 2025-07-25 021352 (6)" src="https://github.com/user-attachments/assets/c0447dd3-eb8b-4f9e-ac74-6413a1bf3273" />


### 8. Heatmap de Casos por País y Año
Se elaboró una matriz de calor que muestra la evolución de los casos por país y año, filtrando solo aquellos con más de 8 años de datos, así permite detectar patrones persistentes, brotes puntuales y mejoras sostenidas, algunos países muestran disminución sostenida, otros mantienen altas cargas sin cambios significativos.

<img width="934" height="708" alt="Figure 2025-07-25 021352 (7)" src="https://github.com/user-attachments/assets/913e9a2a-7599-41c2-be0a-3eea825e4fff" />


## Conclusiones
El análisis global de los datos de tuberculosis revela una situación ambivalente, por un lado, se identifican avances significativos en el control de la enfermedad, reflejados en la tendencia descendente de casos reportados a nivel mundial, esta disminución ha sido particularmente visible a partir de la década del 2000, coincidiendo con un mayor impulso de programas de salud pública, la mejora en los esquemas de tratamiento, el fortalecimiento de las redes de diagnóstico, y el financiamiento internacional enfocado en enfermedades transmisibles, sin embargo, esta mejora global no ha sido uniforme, se evidencian desigualdades marcadas por regiones, países, sexo y edad.
Si bien la trayectoria global es alentadora, el análisis desagregado evidencia la necesidad de sostener y focalizar los esfuerzos de intervención, asegurando que las mejoras observadas sean inclusivas, equitativas y sostenibles en el tiempo.


## Recomendaciones Estratégicas
Focalizar recursos en países con alta carga endémica: Se recomienda que los esfuerzos de financiamiento, cooperación técnica y monitoreo internacional prioricen a los países que concentran la mayor parte de los casos
Diseñar estrategias diferenciadas por sexo: Dado el sesgo de mayor prevalencia en hombres, es crucial entender qué factores están generando esta diferencia y responder con campañas de prevención específicas para cada género. 
Intervenciones focalizadas en edad productiva: Dado que los adultos jóvenes y de mediana edad son los más afectados, se recomienda implementar programas de tamizaje activo en lugares de trabajo, instituciones educativas y espacios de alto tránsito. 












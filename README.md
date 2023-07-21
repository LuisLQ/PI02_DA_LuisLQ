# PROYECTO INDIVIDUAL Nº 2  
# Telecomunicaciones

## Objetivo  
Análisis para describir el comportamiento de la industria de las telecomunicaciones en Argentina, en particular el servicio de internet.

## Contenido del repositorio  
* **main**:  dashboard y pdf generado, archivos 'pi02_luislq_v4'  
* **dataset**:  archivos fuente originales bajados de la página ENACOM, y otros modificados convenientemente para su análisis y utilización
* **eda**:  scripts de python
    - *bajarDatasets.ipynb*: baja archivos utilizando la API
    - *eda_v2.ipynb*: análisis exploratorio de datos, modificación de algunos archivos para usarlos posteriormente  
* **sql_py**:  otros archivos
    - *pi02_db1.accdb*: base de datos *Access* que es utilizada como fuente en el dasboard tabla *z02*. Esta consulta calcula el ratio ***Accesos cada 100 habitantes*** aperturado por 'Localidad'
    - *pi02_da_kpi.sql*: se utiliza en *MySQL* para crear las vistas *kpi01_tasarec* y *kpi02_arpu* para calcular los KPI ***Tasa de Reclamos*** y ***ARPU*** respectivamente que son fuentes de datos para el dashboard
    - *17_intLocalidades_tecnologias.py.txt*: script Python que se ejecuta en *Power BI* con el propósito de unificar la información de tecnologías por localidad en una sola columna  

## Análisis en base al dashboard  
Organizado por *pagina*  
### 1. Internet en Argentina ###  
- Contexto en grandes números para entender el desarrollo del servicio intenet en Argentina con datos actualizados al 3er trimestre de 2023  
### 2. Evolución de los accesos y de la velocidad ###  
- 2014 a 2017
    - las *"telcos"* utilizan la red de dispersión de cables de CU y tecnología *ADSL* para brindar el servicio de internet, la velocidad está limitada a 10Mbps con medias mucho menores entre 2 y 3 Mbps. *ADSL* es el acceso más utilizado en 2014 va disminuyendo suavemente (58 a 44%). Se observa una expansión muy lenta de la *FO* dirigida a los segmentos de clientes TOP
    - en tanto las empresas de TV *"cableras"* se valen del coaxil instalado para paquetizar el servicio de internet en su base de clientes, la tecnología utilizada es *CM* que aumenta en desmedro del *ADSL* (38 a 44%)
- 2017
    - el *ADSL* sobre par de CU pierde terreno a manos del *CM*, esta última tecnología posibilita mayor velocidad.  Se produce migración de clientes y cambio de estrategia de las *telcos* para poder seguir en el negocio: reinversión p/cambiar el medio físico *CU* a *coaxil* o *FO*, asociación/fusión con empresas de cable
- 2018
    - la velocidad media de bajada supera los 10Mbps, el *ADSL* ya no es viable para competir en el mercado
- 2018 a 2023
    - crecen los accesos *CM* en un +52% y el *CU* disminuye en -61%
    - para *FO* el crecimiento muy significativo, 13 veces más accesos lo que representa un +1220 %
- Conclusiones
    - para continuar en el negocio hay que brindar un servicio de alta velocidad, lo cual lleva a contar con una infraestructura que permita competir ahora y prepararse para el futuro (muy próximo).  El medio físico es sin duda alguna la *FO* muy superior al *cable oaxil*.
### 3. Localidades y tecnologías ###  
- mapa interactivo con filtros de:
    - provincia y localidad
    - tecnologías disponibles
        - telefonía fija (TF, WL, SAT)
        - telefonía móvil (3G, 4G)
        - accesos de internet (DU, ADSL, WL, SAT, CM, FO)
        - tecnología red de transporte (FO)
    - tabla con información relevante
    - para la toma de desiciones es fundamental el conocimiento del territorio, tecnologías disponibles y un concepto fuerte sobre las áreas y distancias dada la gran superficie a cubrir y cantidad de aglomerados urbanos en Argentina
### 4. Areas de interés ###  
- pagina interactiva con el objetivo de reconocer rápidamente las áreas de mayor interés para focalizar esfuerzos en la calidad de servicio y/o expansión de la red.
- un *área de interés* se conceptualiza como un agromerado urbano con gran cantidad de población y cuya penetración *accessos cada 100 habitantes* sea menor en relación a otras áreas similares.
- los siguientes filtros permiten visualizar estas áreas interactivamente:
    - provincia, partido
    - accesos cada 100 hab (límite superior)
- visualización de tabla con información relevante y cantidad de *áreas de interés* de acuerdo a la selección elegida de filtros
### 5. Internet vs TV ###  
- comparación entre los servicios de *internet* y *TV pago* 
    - gráfico lineal comparativo de los ingresos y su evolución en período de muestra
    - gráfico comparativo de la *cantidad de accesos cada 100 hogares* con filtros que permiten ver su evolución en el período de muestra
- conclusiónes: 
    - el ingreso de internet aumenta con mayor rapidez, se evidencia al visualizar la evolución comparativa de los accesos que el negocio esta *centrado en internet*
    - una oportunidad a considerar para el crecimiento del negocio es la paquetización de los servicios de *TV* sobre el servicio base *internet*  
### 6. KPI - Tasa de Reclamos ###  
- cantidad de reclamos ingresados a ENACOM por cada millón de accesos de internet fijo
    - kpi referido a la operación relacionado entre muchos otros con la *calidad del servicio*
### 7. KPI - ARPU ### 
- promedio de ingresos por usuario
    - en este ejemplo, por no contar con *base de clientes* el kpi se ha calculado como el *promedio de ingresos por acceso*, cuyo resultado no es igual al ARPU real (por cliente)
    - kpi referido a la *rentabilidad del negocio* 
### 8. KPI - Penetración Internet ###  
- cantidad de accesos internet fija cada 100 habitantes
    - kpi referido al *desarrollo de la red de accesos internet fija*


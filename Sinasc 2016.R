
## meu diretorio
setwd("C:/Users/Audencio Victor/Desktop/Audencio/Producao artigos/Artigo Baixo Peso/BANCO DE DADOS/bancos")


require(tidyverse)
require(psych)

# Passo 2: carregar o banco de dados

dados <- read.csv("ETLSINASC.DNRES_AC_2016_t.csv", sep = ',', stringsAsFactors = F , header = T )
dados1 <- read.csv("ETLSINASC.DNRES_AL_2016_t.csv", sep = ',', stringsAsFactors = T)
dados2 <- read.csv("ETLSINASC.DNRES_AM_2016_t.csv", sep = ',', stringsAsFactors = T)
dados3 <- read.csv("ETLSINASC.DNRES_AP_2016_t.csv", sep = ',', stringsAsFactors = T)
dados4 <- read.csv("ETLSINASC.DNRES_BA_2016_t.csv", sep = ',', stringsAsFactors = T)
dados5 <- read.csv("ETLSINASC.DNRES_CE_2016_t.csv", sep = ',', stringsAsFactors = T)
dados6 <- read.csv("ETLSINASC.DNRES_DF_2016_t.csv", sep = ',', stringsAsFactors = T)
dados7 <- read.csv("ETLSINASC.DNRES_ES_2016_t.csv", sep = ',', stringsAsFactors = T)
dados8 <- read.csv("ETLSINASC.DNRES_GO_2016_t.csv", sep = ',', stringsAsFactors = T)
dados9 <- read.csv("ETLSINASC.DNRES_MA_2016_t.csv", sep = ',', stringsAsFactors = T)
dados10 <- read.csv("ETLSINASC.DNRES_MG_2016_t.csv", sep = ',', stringsAsFactors = T)
dados11 <- read.csv("ETLSINASC.DNRES_MS_2016_t.csv", sep = ',', stringsAsFactors = T)
dados12 <- read.csv("ETLSINASC.DNRES_MT_2016_t.csv", sep = ',', stringsAsFactors = T)
dados13 <- read.csv("ETLSINASC.DNRES_PA_2016_t.csv", sep = ',', stringsAsFactors = T)
dados14 <- read.csv("ETLSINASC.DNRES_PB_2016_t.csv", sep = ',', stringsAsFactors = T)
dados15 <- read.csv("ETLSINASC.DNRES_PE_2016_t.csv", sep = ',', stringsAsFactors = T)
dados16 <- read.csv("ETLSINASC.DNRES_PI_2016_t.csv", sep = ',', stringsAsFactors = T)
dados17 <- read.csv("ETLSINASC.DNRES_PR_2016_t.csv", sep = ',', stringsAsFactors = T)
dados18 <- read.csv("ETLSINASC.DNRES_RJ_2016_t.csv", sep = ',', stringsAsFactors = T)
dados19<- read.csv("ETLSINASC.DNRES_RN_2016_t.csv", sep = ',', stringsAsFactors = T)
dados20 <- read.csv("ETLSINASC.DNRES_RO_2016_t.csv", sep = ',', stringsAsFactors = T)
dados21 <- read.csv("ETLSINASC.DNRES_RR_2016_t.csv", sep = ',', stringsAsFactors = T)
dados22 <- read.csv("ETLSINASC.DNRES_RS_2016_t.csv", sep = ',', stringsAsFactors = T)
dados23 <- read.csv("ETLSINASC.DNRES_SC_2016_t.csv", sep = ',', stringsAsFactors = T)
dados24 <- read.csv("ETLSINASC.DNRES_SE_2016_t.csv", sep = ',', stringsAsFactors = T)
dados25 <- read.csv("ETLSINASC.DNRES_SP_2016_t.csv", sep = ',', stringsAsFactors = T)
dados26 <- read.csv("ETLSINASC.DNRES_TO_2016_t.csv", sep = ',', stringsAsFactors = T)

# unindo os bancos 

Sinasc <- rbind(dados,dados1,dados2,dados3,dados4,dados5,dados6,dados7,dados8,dados9,dados10,
                dados11,dados12,dados13,dados14,dados15, dados16,dados17,dados18,dados19,dados20
                ,dados21,dados22,dados23,dados24,dados25,dados26)

#Exportar o banco
# instalar AER
install.packages(AER)
require(AER)
write.csv(Sinasc, file ="C:/Users/Audencio Victor/Desktop/Audencio/Producao artigos/Artigo Baixo Peso/BANCO DE DADOS/bancos/sinasc.csv")

sinasc2 <- subset(Sinasc, select = c(contador,ORIGEM,CODMUNNASC,IDADEMAE,ESTCIVMAE, ESCMAE,QTDFILVIVO,CODOCUPMAE,TDFILVIVO
                                     QTDFILMORT,GESTACAO,GRAVIDEZ,PARTO, APGAR1, APGAR5,RACACOR, PESO, IDANOMAL,CONSULTAS,
                                     SEXO,DTNASC,TNASCMAE, RACACORMAE, QTDGESTANT,QTDPARTNOR,PARIDADE,SEMAGESTAC,CONSPRENAT
                                     ,def_escol_mae,def_gravidez,def_sexo,def_raca_cor,ef_est_civil, def_gestacao,def_parto,
                                     def_consultas,def_anomalia,
                                     res_SIGLA_UF,res_CODIGO_UF,res_NOME_UF,nasc_REGIAO,res_REGIAO,data_nasc,ano_nasc,
                                     parto_prematuro,def_parto_prematuro))
                                     
                                     
names(dados$SEMAGESTAC)

#fazer merge

sort(Sinasc$CODMUNNASC)
informacoes=merge(Sinasc,caisan, by= "CODMUNNASC")

library(haven)
sinasc <- read_dta("C:/Users/Audencio Victor/Desktop/Audencio/Producao artigos/Artigo Baixo Peso/BANCO DE DADOS/bancos/sinasc.dta")
View(sinasc)

install.packages("glmer")
require(glmer)

model2 <- glmer(meetexceed ~ discipline + (1|school), family=binomial, data=data)








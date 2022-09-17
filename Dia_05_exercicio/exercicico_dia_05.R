install.packages("dplyr")            
library("dplyr")  

setwd('D:/faculdade/Unipe/Fabrica De Software/bd_Fabrica/Fabrica-de-Sofware/Dia_05_exercicio')

df = read.csv('new-used-cars-dataset.csv') #importação do dataframe de carros
df

View(df)

# Renomeando as colunas, para deixa-las mais compreensiveis
df <- rename(df, Nome.Carros = Car.Names, Quilometragem = Mileages, Avaliação = Ratings,
             Certificado = used.certified, preço.drop = price.drop,
             preço =  Price)


# Procura de um outlier
freq_abs = sort(table(df$Certificado), decreasing = TRUE)
freq_abs

boxplot(preço.drop)

# Criação de um novo dataframe, apenas dos usados
df2 = df %>% filter(Certificado=="Used")
View(df2)

# Verificação das avaliações mais frequentes
freq_abs2 = sort(table(df2$Avaliação), decreasing = TRUE)
freq_abs2
barplot(freq_abs2)

#Carro com menor valor
min(df2$preço)

#Carro com maior quantidade de reviews
max(df2$Reviews)

#exportando arquivo
write.table(df2, file = "Carros_Usados.csv", sep = ",")

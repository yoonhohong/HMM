install.packages("dplyr")
library(dplyr)
getwd()
setwd("C:/Users/BRMH/Desktop/유일한/홍윤호교수님 연구")
base <- read.csv("ALSFRS_R-2020.7.15 데이터 편집-YIH(1달내 여러 차례 반복시 최소값만 남김).csv")
library("readxl")
head(base)
data <- read.csv("ALSFRS_R-edit1.csv")
head(data)
base0<-base %>% group_by(SubjectID) %>% 
  filter(MONTH==0)
library(dplyr)
base %>% classby(SubjectID) %>% 
  filter(MONTH==0)
base %>% select(MONTH==0)
base %>% group_by(SubjectID)
head(base0)

# 주석 
base1 <- base %>% group_by(SubjectID) %>% 
  filter(MONTH==1)
i <- 0
while(i<19){
  base_i <- base %>% group_by(SubjectID) %>% 
    filter(MONTH==i)
  i=i+1
}
head(base0)
head(data)
dim(base_2)
i <- 1
b <- 0
while(b<19){
  b <- b+i
  i <- i+1
  base_b <- base %>% group_by(SubjectID) %>% 
    filter(MONTH==b)
}
dim(base_1)
base2 <- base %>% group_by(SubjectID) %>% 
  filter(MONTH==2)
base3 <- base %>% group_by(SubjectID) %>% 
  filter(MONTH==3)
base4 <- base %>% group_by(SubjectID) %>% 
  filter(MONTH==4)
base5 <- base %>% group_by(SubjectID) %>% 
  filter(MONTH==5)
base6 <- base %>% group_by(SubjectID) %>% 
  filter(MONTH==6)
base7 <- base %>% group_by(SubjectID) %>% 
  filter(MONTH==7)
base8 <- base %>% group_by(SubjectID) %>% 
  filter(MONTH==8)
base9 <- base %>% group_by(SubjectID) %>% 
  filter(MONTH==9)
base10 <- base %>% group_by(SubjectID) %>% 
  filter(MONTH==10)
base11 <- base %>% group_by(SubjectID) %>% 
  filter(MONTH==11)
base12 <- base %>% group_by(SubjectID) %>% 
  filter(MONTH==12)
base13 <- base %>% group_by(SubjectID) %>% 
  filter(MONTH==13)
base14 <- base %>% group_by(SubjectID) %>% 
  filter(MONTH==14)
base15 <- base %>% group_by(SubjectID) %>% 
  filter(MONTH==15)
base16 <- base %>% group_by(SubjectID) %>% 
  filter(MONTH==16)
base17 <- base %>% group_by(SubjectID) %>% 
  filter(MONTH==17)
base18 <- base %>% group_by(SubjectID) %>% 
  filter(MONTH==18)
dim(base1)
dim(base2)
merge(base1,base2,base3,base4,base5,base6,base7,base8,base9,base10,base11,base12,base13,base14,base15,base16,base17,base18,by="SubjectID", all = TRUE)
install.packages("tidyverse")
library(tidyverse)
names(base)
library(tidyr)
base_n <- spread(data=base,key="MONTH",value=c("ALSFRS_R_Total","Q1_Speech","Q2_Salivation","Q3_Swallowing","Q4_Handwriting","Q5_Cutting","Q6_Dressing_and_Hygiene","Q7_Turning_in_Bed","Q8_Walking","Q9_Climbing_Stairs","R1_Dyspnea","R2_Orthopnea","R3_Respiratory_Insufficiency"))
base0 <- rename(base0,
                c(ALS="ALSFRS_R_Total",
                  speech="Q1_Speech",
                  salivation="Q2_Salivation",
                  swallowing="Q3_Swallowing",
                  handwriting="Q4_Handwriting",
                  cutting="Q5_Cutting",
                  dressing="Q6_Dressing_and_Hygiene",
                  turning="Q7_Turning_in_Bed",
                  walking="Q8_Walking",
                  climbing="Q9_Climbing_Stairs",
                  dyspnea="R1_Dyspnea",
                  orthopnea="R2_Orthopnea",
                  respiratory="R3_Respiratory_Insufficiency"))
base1 <- rename(base1,
                c(ALS="ALSFRS_R_Total",
                  speech="Q1_Speech",
                  salivation="Q2_Salivation",
                  swallowing="Q3_Swallowing",
                  handwriting="Q4_Handwriting",
                  cutting="Q5_Cutting",
                  dressing="Q6_Dressing_and_Hygiene",
                  turning="Q7_Turning_in_Bed",
                  walking="Q8_Walking",
                  climbing="Q9_Climbing_Stairs",
                  dyspnea="R1_Dyspnea",
                  orthopnea="R2_Orthopnea",
                  respiratory="R3_Respiratory_Insufficiency"))
base2 <- rename(base2,
                c(ALS="ALSFRS_R_Total",
                  speech="Q1_Speech",
                  salivation="Q2_Salivation",
                  swallowing="Q3_Swallowing",
                  handwriting="Q4_Handwriting",
                  cutting="Q5_Cutting",
                  dressing="Q6_Dressing_and_Hygiene",
                  turning="Q7_Turning_in_Bed",
                  walking="Q8_Walking",
                  climbing="Q9_Climbing_Stairs",
                  dyspnea="R1_Dyspnea",
                  orthopnea="R2_Orthopnea",
                  respiratory="R3_Respiratory_Insufficiency"))
base18 <- rename(base18,
                c(ALS="ALSFRS_R_Total",
                  speech="Q1_Speech",
                  salivation="Q2_Salivation",
                  swallowing="Q3_Swallowing",
                  handwriting="Q4_Handwriting",
                  cutting="Q5_Cutting",
                  dressing="Q6_Dressing_and_Hygiene",
                  turning="Q7_Turning_in_Bed",
                  walking="Q8_Walking",
                  climbing="Q9_Climbing_Stairs",
                  dyspnea="R1_Dyspnea",
                  orthopnea="R2_Orthopnea",
                  respiratory="R3_Respiratory_Insufficiency"))
b <- c("base0","base1","base2","base3","base4","base5","base6","base7","base8","base9","base10","base11","base12","base13","base14","base15","base16","base17","base18")
f <- rename(c(ALS="ALSFRS_R_Total",
                speech="Q1_Speech",
                salivation="Q2_Salivation",
                swallowing="Q3_Swallowing",
                handwriting="Q4_Handwriting",
                cutting="Q5_Cutting",
                dressing="Q6_Dressing_and_Hygiene",
                turning="Q7_Turning_in_Bed",
                walking="Q8_Walking",
                climbing="Q9_Climbing_Stairs",
                dyspnea="R1_Dyspnea",
                orthopnea="R2_Orthopnea",
                respiratory="R3_Respiratory_Insufficiency"))
lapply("b",function(x){x <- rename[x(c(ALS="ALSFRS_R_Total",
                              speech="Q1_Speech",
                              salivation="Q2_Salivation",
                              swallowing="Q3_Swallowing",
                              handwriting="Q4_Handwriting",
                              cutting="Q5_Cutting",
                              dressing="Q6_Dressing_and_Hygiene",
                              turning="Q7_Turning_in_Bed",
                              walking="Q8_Walking",
                              climbing="Q9_Climbing_Stairs",
                              dyspnea="R1_Dyspnea",
                              orthopnea="R2_Orthopnea",
                              respiratory="R3_Respiratory_Insufficiency"))})]
i <- 0
while(i in 0:18){
  function(x)[rename(c(ALS="ALSFRS_R_Total",
                       speech="Q1_Speech",
                       salivation="Q2_Salivation",
                       swallowing="Q3_Swallowing",
                       handwriting="Q4_Handwriting",
                       cutting="Q5_Cutting",
                       dressing="Q6_Dressing_and_Hygiene",
                       turning="Q7_Turning_in_Bed",
                       walking="Q8_Walking",
                       climbing="Q9_Climbing_Stairs",
                       dyspnea="R1_Dyspnea",
                       orthopnea="R2_Orthopnea",
                       respiratory="R3_Respiratory_Insufficiency"))]
}
names(base4)
base_n <- spread(data=base,key="MONTH",value="ALSFRS_R_Total")
base_n <- base %>% select(-feature_delta)
names(base_n)
base_add <- merge(base0,base1,by="SubjectID",all=T)
base_add <- merge(base_add,base2,by="SubjectID",all=T)
base_add <- merge(base_add,base3,by="SubjectID",all=T)
base_add <- merge(base_add,base4,by="SubjectID",all=T)
base_add <- merge(base_add,base5,by="SubjectID",all=T)
base_add <- merge(base_add,base6,by="SubjectID",all=T)
base_add <- merge(base_add,base7,by="SubjectID",all=T)
base_add <- merge(base_add,base8,by="SubjectID",all=T)
base_add <- merge(base_add,base9,by="SubjectID",all=T)
base_add <- merge(base_add,base10,by="SubjectID",all=T)
base_add <- merge(base_add,base11,by="SubjectID",all=T)
base_add <- merge(base_add,base12,by="SubjectID",all=T)
base_add <- merge(base_add,base13,by="SubjectID",all=T)
base_add <- merge(base_add,base14,by="SubjectID",all=T)
base_add <- merge(base_add,base15,by="SubjectID",all=T)
base_add <- merge(base_add,base16,by="SubjectID",all=T)
base_add <- merge(base_add,base17,by="SubjectID",all=T)
base_add <- merge(base_add,base18,by="SubjectID",all=T)
base_add <- base_add %>% rename
#최빈값구하기
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}  
write.csv(base_add,"ALSFRS-edit2.csv")
data <- read.csv("ALSFRS-edit3.csv")
library(mice)
md.pattern(data)  
install.packages("mice")
library(mice)
md.pattern(data)
library("mice")
require(mice)

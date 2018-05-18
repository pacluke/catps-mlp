library(readr);
library(dplyr);
library(magrittr);

################

df <- read_csv("~/Desktop/ondes3d_1_ligurian_64_grisou-5.nancy.grid5000.fr_counter.csv.gz");
df

################ Contar quantas operacoes Operation sao realizadas por iteracao (Iteration).

df %>% 
group_by(Iteration) %>%
summarize(Op_Per_It = n())

################ Como o exercicio anterior, mas por iteracao (Iteration) e processo (Rank).

df %>% 
group_by(Iteration, Rank) %>% 
summarize(Op_Per_It_Rank = n())

################ Calcular o tempo medio da operacao Stress para o processo 21 para cada iteracao (Iteration)

df %>% 
filter(Rank == 21, Operation == "Stress") %>% 
group_by(Iteration) %>%
summarize(Average_Time = mean(Time))

################ Calcule o IPC (Instrucoes Por Ciclo = PAPI_TOT_INS/PAPI_TOT_CYC) por numero de iteracao e
################ por tipo de operacao para cada processo, apresente somente os resultados da iteracao 110.

df %>% 
filter(Iteration == 110) %>% 
group_by(Operation) %>% 
group_by(Rank) %>% 
summarize(IPC = mean(PAPI_TOT_CYC/PAPI_TOT_INS))

################ Liste as observacoes quando o IPC for menor que o valor medio.
 
ipc_mean <- df %>%  
	summarize(IPC = mean(PAPI_TOT_CYC/PAPI_TOT_INS)) %>%
	summarize(IPC_MEAN = mean(IPC))

df %>% 
	filter(PAPI_TOT_CYC/PAPI_TOT_INS < ipc_mean[[1]])
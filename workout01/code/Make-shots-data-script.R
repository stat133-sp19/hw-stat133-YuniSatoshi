
#title:  "Make-shots-data"
#description: "this script is about the data of NBA player in Gloden State Warrios"
#input:"andre-iguodala.csv", "draymond-green.csv", "kevin-durant.csv", "klay-thompson" , "stephen-curry.csv" 
#output:"Andre-Iguodala-summary.txt", "Graymond-Green-summary.txt" , "Kevin-Durant-summary.txt" ,  "Klay-Thompson-summary.txt" , "Stephen-Curry-summary.txt" 



# Read in the five data sets, using relative file paths; the decision of the data types for each column is up to you. 

library(dplyr)
classes = c('character' , 'character' , 'integer' , 'integer' , 'integer' , 'integer' , 'character' , 'factor' , 'factor' , 'integer' , 'character' , 'integer' , 'integer')
curry <- read.csv("/Users/chuyunguo/desktop/hw-stat133/workout01/data/stephen-curry.csv", stringsAsFactors = FALSE,colClasses = classes) 
iguodala <- read.csv("/Users/chuyunguo/desktop/hw-stat133/workout01/data/andre-iguodala.csv", stringsAsFactors = FALSE,colClasses = classes)
green <- read.csv("/Users/chuyunguo/desktop/hw-stat133/workout01/data/draymond-green.csv", stringsAsFactors = FALSE,colClasses = classes)
durant <- read.csv("/Users/chuyunguo/desktop/hw-stat133/workout01/data/kevin-durant.csv", stringsAsFactors = FALSE,colClasses = classes)
thompson <- read.csv("/Users/chuyunguo/desktop/hw-stat133/workout01/data/klay-thompson.csv", stringsAsFactors = FALSE,colClasses = classes)


# Add a column name to each imported data frame, that contains the name of the corresponding player: 


iguodala <- mutate(iguodala,name = rep("Andre Iguodala",length(iguodala$team_name)))
green <- mutate(green,name = rep("Graymond Green",length(green$team_name)))
durant <- mutate(durant,name = rep("Kevin Durant",length(durant$team_name)))
thompson <- mutate(thompson,name = rep("Klay Thompson",length(thompson$team_name)))
curry <- mutate(curry,name = rep("Stephen Curry",length(curry$team_name)))



# Change the original values of shot_made_flag to more descriptive values: replace "n" with "shot_no", and "y" with "shot_yes". 

curry <- curry %>% mutate(shot_made_flag = replace(shot_made_flag, shot_made_flag == 'n','shot_no'))
curry <- curry %>% mutate(shot_made_flag = replace(shot_made_flag, shot_made_flag == 'y','shot_yes'))
thompson <- thompson %>% mutate(shot_made_flag = replace(shot_made_flag, shot_made_flag == 'n','shot_no'))
thompson <- thompson %>% mutate(shot_made_flag = replace(shot_made_flag, shot_made_flag == 'y','shot_yes'))
durant <- durant %>% mutate(shot_made_flag = replace(shot_made_flag, shot_made_flag == 'n','shot_no'))
durant <- durant %>% mutate(shot_made_flag = replace(shot_made_flag, shot_made_flag == 'y','shot_yes'))
green <- green %>% mutate(shot_made_flag = replace(shot_made_flag, shot_made_flag == 'n','shot_no'))
green <- green %>% mutate(shot_made_flag = replace(shot_made_flag, shot_made_flag == 'y','shot_yes'))
iguodala <- iguodala %>% mutate(shot_made_flag = replace(shot_made_flag, shot_made_flag == 'n','shot_no'))
iguodala <- iguodala %>% mutate(shot_made_flag = replace(shot_made_flag, shot_made_flag == 'y','shot_yes'))


# Add a column minute that contains the minute number where a shot occurred.

curry <- mutate(curry,minute = period *12 - minutes_remaining )
thompson <- mutate(thompson,minute = period *12 - minutes_remaining)
durant <- mutate(durant,minute = period *12 - minutes_remaining)
green <- mutate(green,minute = period *12 - minutes_remaining)
iguodala <- mutate(iguodala,minute = period *12 - minutes_remaining)




# Use sink() to send the summary() output of each imported data frame into individuals text ???les:

sink(file = '/Users/chuyunguo/desktop/hw-stat133/workout01/output/Stephen-Curry-summary.txt')
summary(curry)
sink()
sink(file = '/Users/chuyunguo/desktop/hw-stat133/workout01/output/Klay-Thompson-summary.txt')
summary(thompson)
sink()
sink(file = '/Users/chuyunguo/desktop/hw-stat133/workout01/output/Kevin-Durant-summary.txt')
summary(durant)
sink()
sink(file = '/Users/chuyunguo/desktop/hw-stat133/workout01/output/Graymond-Green-summary.txt')
summary(green)
sink()
sink(file = '/Users/chuyunguo/desktop/hw-stat133/workout01/output/Andre-Iguodala-summary.txt')
summary(iguodala)
sink()




# Use the row binding function rbind() to stack the tables into one single data frame 

shot_data <- rbind(curry,durant,green,iguodala,thompson)





# Export (i.e. write) the assembled table as a CSV ???le shots-data.csv inside the folder data/. Use a relative path for this operation. 

write.csv(
  x = rbind(curry,durant,green,iguodala,thompson,deparse.level = 1),
  file = '/Users/chuyunguo/desktop/hw-stat133/workout01/data/shots-data.csv'  
)




# Use sink() to send the summary() output of the assembled table. 

sink(file = '/Users/chuyunguo/desktop/hw-stat133/workout01/output/shot-data-summary.txt')
summary(rbind(curry,durant,green,iguodala,thompson,deparse.level = 1))
sink()




  
  
  
  
  
    
  
    
  
  
  











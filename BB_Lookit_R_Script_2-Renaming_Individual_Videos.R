#### Script 2: Renaming Individual Videos
## Lookit BB video renaming script 
## Written by Laurel Whitfield (laurel.whitfield@yale.edu)
## December 2021
# Note: It is best to wait about 10 minutes after running script 1 to run this script. This gives time for script 1 to complete it's functions, which is necessary for script 2.

### COPY AND PASTE THE NAME OF THE FILE WHERE THE VIDEOS YOU'RE RENAMING ARE LOCATED!
  # Note: This folder will be found in the lookit_videos folder that you used in script 1
Participant_Folder_Name <- "BB_2LMLFH_7"

## Install "testthat" package if you don't already have it by removing the # before the next line
#install.packages("testthat")
library(testthat)

## Set up directory paths 
# Put the location of the folders you created in script one in the quotation marks to the right of the <- below
  # If you just ran script 1, and haven't moved any folders since, you can run "newDir and the output can be pasted below
All_Participant_Videos <- "/Users/LaurelAWhitfield/Desktop/BB_R_Script_Editing/lookit_videos/BB_Lookit_Videos"
setwd(All_Participant_Videos)
getwd()
  
# By participant folder, which was named as Participant_Folder_Name above
Participant_Video_Location = paste0(All_Participant_Videos, "/", Participant_Folder_Name, "/")
setwd(Participant_Video_Location)
getwd()
  
    
## Extract condition information
{
  if (Participant_Folder_Name, endsWith("_0")||endsWith("_1")||endsWith("_2")||endsWith("_3")||endsWith("_4")||endsWith("_5")||endsWith("_6")||endsWith("_7")||endsWith("_8")||endsWith("_9"))
  {
    Participant_Condition <- substr(Participant_Folder_Name,11)
  }
  if (Participant_Folder_Name, endsWith("_10")||endsWith("_11")||endsWith("_12")||endsWith("_13")||endsWith("_14")||endsWith("_15"))
  {
    Participant_Condition <- substr(Participant_Folder_Name,11,12)
  }
}
     
# Remove non-trial specific information from video names
All_Participant_Videos <- list.files(path = Participant_Video_Location, pattern = ".mp4")
All_Participant_Videos_2 <- data.frame(filename = list.files(path = Participant_Video_Location, pattern = ".mp4"))
All_Participant_Videos_3 <- separate(data = All_Participant_Videos_2, col = filename, sep = "_", into = c("X1","X2","Video_Type","X4","X5","X6"))
Video_Trial_Type <- All_Participant_Videos_3$Video_Type
file.rename(All_Participant_Videos,Video_Trial_Type)
  
## Rename videos by trial type
# Consent videos for all conditions
sapply(list, Video_Trial_Type == "2-video-consent")
{
  Old_Consent_Video_Name <- "2-video-consent"
  New_Consent_Video_Name <- paste0(Participant_Folder_Name, "_Consent.mp4")
  file.rename(Old_Consent_Video_Name, New_Consent_Video_Name)  
}
# Instruction videos for all conditions
sapply(list, Video_Trial_Type == "3-instructions-preview")
{
  Old_Instructions_Video_Name <- "3-instructions-preview"
  New_Instructions_Video_Name <- paste0(Participant_Folder_Name, "_Instructions.mp4")
  file.rename(Old_Instructions_Video_Name, New_Instructions_Video_Name)
}
  
## Rename videos by condition
{
  # Condition 0
  ifelse (Participant_Condition == 0, NULL, skip
  ( 
    sapply(list, Video_Trial_Type == "7-test-trials")
    {
      Old_Test1_Video_Name <- "7-test-trials"
      New_Test1_Video_Name <- paste0(Participant_Folder_Name, "_Test1_LLLS_32_1500.mp4")
      file.rename(Old_Test1_Video_Name, New_Test1_Video_Name)
    }
    sapply(list, Video_Trial_Type == "8-test-trials")
    {
      Old_Test2_Video_Name <- "8-test-trials"
      New_Test2_Video_Name <- paste0(Participant_Folder_Name, "_Test2_RLRS_32_1500.mp4")
      file.rename(Old_Test2_Video_Name, New_Test2_Video_Name)
    }
    sapply(list, Video_Trial_Type == "9-test-trials")
    {
      Old_Test3_Video_Name <- "9-test-trials"
      New_Test3_Video_Name <- paste0(Participant_Folder_Name, "_Test3_LLRS_32_1500.mp4")
      file.rename(Old_Test3_Video_Name, New_Test3_Video_Name)
    }
    sapply(list, Video_Trial_Type == "10-test-trials")
    {
      Old_Test4_Video_Name <- "10-test-trials"
      New_Test4_Video_Name <- paste0(Participant_Folder_Name, "_Test4_RLLS_32_1500.mp4")
      file.rename(Old_Test4_Video_Name, New_Test4_Video_Name)
    }
  )) 
  
  # Condition 1
  ifelse (Participant_Condition == 1, NULL, skip
  ( 
    sapply(list, Video_Trial_Type == "7-test-trials")
    {
      Old_Test1_Video_Name <- "7-test-trials"
      New_Test1_Video_Name <- paste0(Participant_Folder_Name, "_Test1_LLLS_32_1500.mp4")
      file.rename(Old_Test1_Video_Name, New_Test1_Video_Name)
    }
    sapply(list, Video_Trial_Type == "8-test-trials")
    {
      Old_Test2_Video_Name <- "8-test-trials"
      New_Test2_Video_Name <- paste0(Participant_Folder_Name, "_Test2_RLRS_32_1500.mp4")
      file.rename(Old_Test2_Video_Name, New_Test2_Video_Name)
    }
    sapply(list, Video_Trial_Type == "9-test-trials")
    {
      Old_Test3_Video_Name <- "9-test-trials"
      New_Test3_Video_Name <- paste0(Participant_Folder_Name, "_Test3_RLLS_32_1500.mp4")
      file.rename(Old_Test3_Video_Name, New_Test3_Video_Name)
    }
    sapply(list, Video_Trial_Type == "10-test-trials")
    {
      Old_Test4_Video_Name <- "10-test-trials"
      New_Test4_Video_Name <- paste0(Participant_Folder_Name, "_Test4_LLRS_32_1500.mp4")
      file.rename(Old_Test4_Video_Name, New_Test4_Video_Name)
    }
  )) 
  
  # Condition 2
  ifelse (Participant_Condition == 2, NULL, skip
  ( 
    sapply(list, Video_Trial_Type == "7-test-trials")
    {
      Old_Test1_Video_Name <- "7-test-trials"
      New_Test1_Video_Name <- paste0(Participant_Folder_Name, "_Test1_RLRS_32_1500.mp4")
      file.rename(Old_Test1_Video_Name, New_Test1_Video_Name)
    }
    sapply(list, Video_Trial_Type == "8-test-trials")
    {
      Old_Test2_Video_Name <- "8-test-trials"
      New_Test2_Video_Name <- paste0(Participant_Folder_Name, "_Test2_LLLS_32_1500.mp4")
      file.rename(Old_Test2_Video_Name, New_Test2_Video_Name)
    }
    sapply(list, Video_Trial_Type == "9-test-trials")
    {
      Old_Test3_Video_Name <- "9-test-trials"
      New_Test3_Video_Name <- paste0(Participant_Folder_Name, "_Test3_LLRS_32_1500.mp4")
      file.rename(Old_Test3_Video_Name, New_Test3_Video_Name)
    }
    sapply(list, Video_Trial_Type == "10-test-trials")
    {
      Old_Test4_Video_Name <- "10-test-trials"
      New_Test4_Video_Name <- paste0(Participant_Folder_Name, "_Test4_RLLS_32_1500.mp4")
      file.rename(Old_Test4_Video_Name, New_Test4_Video_Name)
    }
  ))
  
  # Condition 3
  ifelse (Participant_Condition == 3, NULL, skip  
  ( 
    sapply(list, Video_Trial_Type == "7-test-trials")
    {
      Old_Test1_Video_Name <- "7-test-trials"
      New_Test1_Video_Name <- paste0(Participant_Folder_Name, "_Test1_RLRS_32_1500.mp4")
      file.rename(Old_Test1_Video_Name, New_Test1_Video_Name)
    }
    sapply(list, Video_Trial_Type == "8-test-trials")
    {
      Old_Test2_Video_Name <- "8-test-trials"
      New_Test2_Video_Name <- paste0(Participant_Folder_Name, "_Test2_LLLS_32_1500.mp4")
      file.rename(Old_Test2_Video_Name, New_Test2_Video_Name)
    }
    sapply(list, Video_Trial_Type == "9-test-trials")
    {
      Old_Test3_Video_Name <- "9-test-trials"
      New_Test3_Video_Name <- paste0(Participant_Folder_Name, "_Test3_RLLS_32_1500.mp4")
      file.rename(Old_Test3_Video_Name, New_Test3_Video_Name)
    }
    sapply(list, Video_Trial_Type == "10-test-trials")
    {
      Old_Test4_Video_Name <- "10-test-trials"
      New_Test4_Video_Name <- paste0(Participant_Folder_Name, "_Test4_LLRS_32_1500.mp4")
      file.rename(Old_Test4_Video_Name, New_Test4_Video_Name)
    }
  ))
  
  # Condition 4
  ifelse (Participant_Condition == 4, NULL, skip  
  ( 
    sapply(list, Video_Trial_Type == "7-test-trials")
    {
      Old_Test1_Video_Name <- "7-test-trials"
      New_Test1_Video_Name <- paste0(Participant_Folder_Name, "_Test1_LLLS_49_1500.mp4")
      file.rename(Old_Test1_Video_Name, New_Test1_Video_Name)
    }
    sapply(list, Video_Trial_Type == "8-test-trials")
    {
      Old_Test2_Video_Name <- "8-test-trials"
      New_Test2_Video_Name <- paste0(Participant_Folder_Name, "_Test2_RLRS_49_1500.mp4")
      file.rename(Old_Test2_Video_Name, New_Test2_Video_Name)
    }
    sapply(list, Video_Trial_Type == "9-test-trials")
    {
      Old_Test3_Video_Name <- "9-test-trials"
      New_Test3_Video_Name <- paste0(Participant_Folder_Name, "_Test3_LLRS_49_1500.mp4")
      file.rename(Old_Test3_Video_Name, New_Test3_Video_Name)
    }
    sapply(list, Video_Trial_Type == "10-test-trials")
    {
      Old_Test4_Video_Name <- "10-test-trials"
      New_Test4_Video_Name <- paste0(Participant_Folder_Name, "_Test4_RLLS_49_1500.mp4")
      file.rename(Old_Test4_Video_Name, New_Test4_Video_Name)
    }
  ))
  
  # Condition 5
  ifelse (Participant_Condition == 5, NULL, skip 
  ( 
    sapply(list, Video_Trial_Type == "7-test-trials")
    {
      Old_Test1_Video_Name <- "7-test-trials"
      New_Test1_Video_Name <- paste0(Participant_Folder_Name, "_Test1_LLLS_49_1500.mp4")
      file.rename(Old_Test1_Video_Name, New_Test1_Video_Name)
    }
    sapply(list, Video_Trial_Type == "8-test-trials")
    {
      Old_Test2_Video_Name <- "8-test-trials"
      New_Test2_Video_Name <- paste0(Participant_Folder_Name, "_Test2_RLRS_49_1500.mp4")
      file.rename(Old_Test2_Video_Name, New_Test2_Video_Name)
    }
    sapply(list, Video_Trial_Type == "9-test-trials")
    {
      Old_Test3_Video_Name <- "9-test-trials"
      New_Test3_Video_Name <- paste0(Participant_Folder_Name, "_Test3_RLLS_49_1500.mp4")
      file.rename(Old_Test3_Video_Name, New_Test3_Video_Name)
    }
    sapply(list, Video_Trial_Type == "10-test-trials")
    {
      Old_Test4_Video_Name <- "10-test-trials"
      New_Test4_Video_Name <- paste0(Participant_Folder_Name, "_Test4_LLRS_49_1500.mp4")
      file.rename(Old_Test4_Video_Name, New_Test4_Video_Name)
    }
  ))
  
  # Condition 6
  ifelse (Participant_Condition == 6, NULL, skip 
  ( 
    sapply(list, Video_Trial_Type == "7-test-trials")
    {
      Old_Test1_Video_Name <- "7-test-trials"
      New_Test1_Video_Name <- paste0(Participant_Folder_Name, "_Test1_RLRS_49_1500.mp4")
      file.rename(Old_Test1_Video_Name, New_Test1_Video_Name)
    }
    sapply(list, Video_Trial_Type == "8-test-trials")
    {
      Old_Test2_Video_Name <- "8-test-trials"
      New_Test2_Video_Name <- paste0(Participant_Folder_Name, "_Test2_LLLS_49_1500.mp4")
      file.rename(Old_Test2_Video_Name, New_Test2_Video_Name)
    }
    sapply(list, Video_Trial_Type == "9-test-trials")
    {
      Old_Test3_Video_Name <- "9-test-trials"
      New_Test3_Video_Name <- paste0(Participant_Folder_Name, "_Test3_LLRS_49_1500.mp4")
      file.rename(Old_Test3_Video_Name, New_Test3_Video_Name)
    }
    sapply(list, Video_Trial_Type == "10-test-trials")
    {
      Old_Test4_Video_Name <- "10-test-trials"
      New_Test4_Video_Name <- paste0(Participant_Folder_Name, "_Test4_RLLS_49_1500.mp4")
      file.rename(Old_Test4_Video_Name, New_Test4_Video_Name)
    }
  ))
  
  # Condition 7
  ifelse (Participant_Condition == 7, NULL, skip 
  ( 
    sapply(list, Video_Trial_Type == "7-test-trials")
    {
      Old_Test1_Video_Name <- "7-test-trials"
      New_Test1_Video_Name <- paste0(Participant_Folder_Name, "_Test1_RLRS_49_1500.mp4")
      file.rename(Old_Test1_Video_Name, New_Test1_Video_Name)
    }
    sapply(list, Video_Trial_Type == "8-test-trials")
    {
      Old_Test2_Video_Name <- "8-test-trials"
      New_Test2_Video_Name <- paste0(Participant_Folder_Name, "_Test2_LLLS_49_1500.mp4")
      file.rename(Old_Test2_Video_Name, New_Test2_Video_Name)
    }
    sapply(list, Video_Trial_Type == "9-test-trials")
    {
      Old_Test3_Video_Name <- "9-test-trials"
      New_Test3_Video_Name <- paste0(Participant_Folder_Name, "_Test3_RLLS_49_1500.mp4")
      file.rename(Old_Test3_Video_Name, New_Test3_Video_Name)
    }
    sapply(list, Video_Trial_Type == "10-test-trials")
    {
      Old_Test4_Video_Name <- "10-test-trials"
      New_Test4_Video_Name <- paste0(Participant_Folder_Name, "_Test4_LLRS_49_1500.mp4")
      file.rename(Old_Test4_Video_Name, New_Test4_Video_Name)
    }
  )) 
  
  # Condition 8
  ifelse (Participant_Condition == 8, NULL, skip 
  (
    sapply(list, Video_Trial_Type == "7-test-trials")
    {
      Old_Test1_Video_Name <- "7-test-trials"
      New_Test1_Video_Name <- paste0(Participant_Folder_Name, "_Test1_RLLS_32_1500.mp4")
      file.rename(Old_Test1_Video_Name, New_Test1_Video_Name)
    }
    sapply(list, Video_Trial_Type == "8-test-trials")
    {
      Old_Test2_Video_Name <- "8-test-trials"
      New_Test2_Video_Name <- paste0(Participant_Folder_Name, "_Test2_LLRS_32_1500.mp4")
      file.rename(Old_Test2_Video_Name, New_Test2_Video_Name)
    }
    sapply(list, Video_Trial_Type == "9-test-trials")
    {
      Old_Test3_Video_Name <- "9-test-trials"
      New_Test3_Video_Name <- paste0(Participant_Folder_Name, "_Test3_RLRS_32_1500.mp4")
      file.rename(Old_Test3_Video_Name, New_Test3_Video_Name)
    }
    sapply(list, Video_Trial_Type == "10-test-trials")
    {
      Old_Test4_Video_Name <- "10-test-trials"
      New_Test4_Video_Name <- paste0(Participant_Folder_Name, "_Test4_LLLS_32_1500.mp4")
      file.rename(Old_Test4_Video_Name, New_Test4_Video_Name)
    }
  ))
  
  # Condition 9
  ifelse (Participant_Condition == 9, NULL, skip 
  ( 
    sapply(list, Video_Trial_Type == "7-test-trials")
    {
      Old_Test1_Video_Name <- "7-test-trials"
      New_Test1_Video_Name <- paste0(Participant_Folder_Name, "_Test1_LLRS_32_1500.mp4")
      file.rename(Old_Test1_Video_Name, New_Test1_Video_Name)
    }
    sapply(list, Video_Trial_Type == "8-test-trials")
    {
      Old_Test2_Video_Name <- "8-test-trials"
      New_Test2_Video_Name <- paste0(Participant_Folder_Name, "_Test2_RLLS_32_1500.mp4")
      file.rename(Old_Test2_Video_Name, New_Test2_Video_Name)
    }
    sapply(list, Video_Trial_Type == "9-test-trials")
    {
      Old_Test3_Video_Name <- "9-test-trials"
      New_Test3_Video_Name <- paste0(Participant_Folder_Name, "_Test3_RLRS_32_1500.mp4")
      file.rename(Old_Test3_Video_Name, New_Test3_Video_Name)
    }
    sapply(list, Video_Trial_Type == "10-test-trials")
    {
      Old_Test4_Video_Name <- "10-test-trials"
      New_Test4_Video_Name <- paste0(Participant_Folder_Name, "_Test4_LLLS_32_1500.mp4")
      file.rename(Old_Test4_Video_Name, New_Test4_Video_Name)
    }
  )) 
  
  # Condition 10
  ifelse (Participant_Condition == 10, NULL, skip 
  ( 
    sapply(list, Video_Trial_Type == "7-test-trials")
    {
      Old_Test1_Video_Name <- "7-test-trials"
      New_Test1_Video_Name <- paste0(Participant_Folder_Name, "_Test1_LLRS_32_1500.mp4")
      file.rename(Old_Test1_Video_Name, New_Test1_Video_Name)
    }
    sapply(list, Video_Trial_Type == "8-test-trials")
    {
      Old_Test2_Video_Name <- "8-test-trials"
      New_Test2_Video_Name <- paste0(Participant_Folder_Name, "_Test2_RLLS_32_1500.mp4")
      file.rename(Old_Test2_Video_Name, New_Test2_Video_Name)
    }
    sapply(list, Video_Trial_Type == "9-test-trials")
    {
      Old_Test3_Video_Name <- "9-test-trials"
      New_Test3_Video_Name <- paste0(Participant_Folder_Name, "_Test3_LLLS_32_1500.mp4")
      file.rename(Old_Test3_Video_Name, New_Test3_Video_Name)
    }
    sapply(list, Video_Trial_Type == "10-test-trials")
    {
      Old_Test4_Video_Name <- "10-test-trials"
      New_Test4_Video_Name <- paste0(Participant_Folder_Name, "_Test4_RLRS_32_1500.mp4")
      file.rename(Old_Test4_Video_Name, New_Test4_Video_Name)
    }
  )) 
  
  # Condition 11
  ifelse (Participant_Condition == 11, NULL, skip 
  ( 
    sapply(list, Video_Trial_Type == "7-test-trials")
    {
      Old_Test1_Video_Name <- "7-test-trials"
      New_Test1_Video_Name <- paste0(Participant_Folder_Name, "_Test1_RLLS_32_1500.mp4")
      file.rename(Old_Test1_Video_Name, New_Test1_Video_Name)
    }
    sapply(list, Video_Trial_Type == "8-test-trials")
    {
      Old_Test2_Video_Name <- "8-test-trials"
      New_Test2_Video_Name <- paste0(Participant_Folder_Name, "_Test2_LLRS_32_1500.mp4")
      file.rename(Old_Test2_Video_Name, New_Test2_Video_Name)
    }
    sapply(list, Video_Trial_Type == "9-test-trials")
    {
      Old_Test3_Video_Name <- "9-test-trials"
      New_Test3_Video_Name <- paste0(Participant_Folder_Name, "_Test3_LLLS_32_1500.mp4")
      file.rename(Old_Test3_Video_Name, New_Test3_Video_Name)
    }
    sapply(list, Video_Trial_Type == "10-test-trials")
    {
      Old_Test4_Video_Name <- "10-test-trials"
      New_Test4_Video_Name <- paste0(Participant_Folder_Name, "_Test4_RLRS_32_1500.mp4")
      file.rename(Old_Test4_Video_Name, New_Test4_Video_Name)
    }
  )) 
  
  # Condition 12
  ifelse (Participant_Condition == 12, NULL, skip 
  ( 
    sapply(list, Video_Trial_Type == "7-test-trials")
    {
      Old_Test1_Video_Name <- "7-test-trials"
      New_Test1_Video_Name <- paste0(Participant_Folder_Name, "_Test1_RLLS_49_1500.mp4")
      file.rename(Old_Test1_Video_Name, New_Test1_Video_Name)
    }
    sapply(list, Video_Trial_Type == "8-test-trials")
    {
      Old_Test2_Video_Name <- "8-test-trials"
      New_Test2_Video_Name <- paste0(Participant_Folder_Name, "_Test2_LLRS_49_1500.mp4")
      file.rename(Old_Test2_Video_Name, New_Test2_Video_Name)
    }
    sapply(list, Video_Trial_Type == "9-test-trials")
    {
      Old_Test3_Video_Name <- "9-test-trials"
      New_Test3_Video_Name <- paste0(Participant_Folder_Name, "_Test3_RLRS_49_1500.mp4")
      file.rename(Old_Test3_Video_Name, New_Test3_Video_Name)
    }
    sapply(list, Video_Trial_Type == "10-test-trials")
    {
      Old_Test4_Video_Name <- "10-test-trials"
      New_Test4_Video_Name <- paste0(Participant_Folder_Name, "_Test4_LLLS_49_1500.mp4")
      file.rename(Old_Test4_Video_Name, New_Test4_Video_Name)
    }
  )) 
  
  # Condition 13
  ifelse (Participant_Condition == 13, NULL, skip 
  ( 
    sapply(list, Video_Trial_Type == "7-test-trials")
    {
      Old_Test1_Video_Name <- "7-test-trials"
      New_Test1_Video_Name <- paste0(Participant_Folder_Name, "_Test1_LLRS_49_1500.mp4")
      file.rename(Old_Test1_Video_Name, New_Test1_Video_Name)
    }
    sapply(list, Video_Trial_Type == "8-test-trials")
    {
      Old_Test2_Video_Name <- "8-test-trials"
      New_Test2_Video_Name <- paste0(Participant_Folder_Name, "_Test2_RLLS_49_1500.mp4")
      file.rename(Old_Test2_Video_Name, New_Test2_Video_Name)
    }
    sapply(list, Video_Trial_Type == "9-test-trials")
    {
      Old_Test3_Video_Name <- "9-test-trials"
      New_Test3_Video_Name <- paste0(Participant_Folder_Name, "_Test3_RLRS_49_1500.mp4")
      file.rename(Old_Test3_Video_Name, New_Test3_Video_Name)
    }
    sapply(list, Video_Trial_Type == "10-test-trials")
    {
      Old_Test4_Video_Name <- "10-test-trials"
      New_Test4_Video_Name <- paste0(Participant_Folder_Name, "_Test4_LLLS_49_1500.mp4")
      file.rename(Old_Test4_Video_Name, New_Test4_Video_Name)
    }
  )) 
  
  # Condition 14
  ifelse (Participant_Condition == 14, NULL, skip 
  ( 
    sapply(list, Video_Trial_Type == "7-test-trials")
    {
      Old_Test1_Video_Name <- "7-test-trials"
      New_Test1_Video_Name <- paste0(Participant_Folder_Name, "_Test1_LLRS_49_1500.mp4")
      file.rename(Old_Test1_Video_Name, New_Test1_Video_Name)
    }
    sapply(list, Video_Trial_Type == "8-test-trials")
    {
      Old_Test2_Video_Name <- "8-test-trials"
      New_Test2_Video_Name <- paste0(Participant_Folder_Name, "_Test2_RLLS_49_1500.mp4")
      file.rename(Old_Test2_Video_Name, New_Test2_Video_Name)
    }
    sapply(list, Video_Trial_Type == "9-test-trials")
    {
      Old_Test3_Video_Name <- "9-test-trials"
      New_Test3_Video_Name <- paste0(Participant_Folder_Name, "_Test3_LLLS_49_1500.mp4")
      file.rename(Old_Test3_Video_Name, New_Test3_Video_Name)
    }
    sapply(list, Video_Trial_Type == "10-test-trials")
    {
      Old_Test4_Video_Name <- "10-test-trials"
      New_Test4_Video_Name <- paste0(Participant_Folder_Name, "_Test4_RLRS_49_1500.mp4")
      file.rename(Old_Test4_Video_Name, New_Test4_Video_Name)
    }
  )) 
  
  # Condition 15
  ifelse (Participant_Condition == 15, NULL, skip 
  ( 
    sapply(list, Video_Trial_Type == "7-test-trials")
    {
      Old_Test1_Video_Name <- "7-test-trials"
      New_Test1_Video_Name <- paste0(Participant_Folder_Name, "_Test1_RLLS_49_1500.mp4")
      file.rename(Old_Test1_Video_Name, New_Test1_Video_Name)
    }
    sapply(list, Video_Trial_Type == "8-test-trials")
    {
      Old_Test2_Video_Name <- "8-test-trials"
      New_Test2_Video_Name <- paste0(Participant_Folder_Name, "_Test2_LLRS_49_1500.mp4")
      file.rename(Old_Test2_Video_Name, New_Test2_Video_Name)
    }
    sapply(list, Video_Trial_Type == "9-test-trials")
    {
      Old_Test3_Video_Name <- "9-test-trials"
      New_Test3_Video_Name <- paste0(Participant_Folder_Name, "_Test3_LLLS_49_1500.mp4")
      file.rename(Old_Test3_Video_Name, New_Test3_Video_Name)
    }
    sapply(list, Video_Trial_Type == "10-test-trials")
    {
      Old_Test4_Video_Name <- "10-test-trials"
      New_Test4_Video_Name <- paste0(Participant_Folder_Name, "_Test4_RLRS_49_1500.mp4")
      file.rename(Old_Test4_Video_Name, New_Test4_Video_Name)
    }
  )) 
}
#### End of script 2 ####

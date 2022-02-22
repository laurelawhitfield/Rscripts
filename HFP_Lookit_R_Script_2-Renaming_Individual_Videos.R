#### Script 2: Renaming Individual Videos
## Lookit HFP video renaming script 
## Written by Laurel Whitfield (laurel.whitfield@yale.edu)
## January 2022
# Note: It is best to wait about 10 minutes after running script 1 to run this script. This gives time for script 1 to complete it's functions, which is necessary for script 2.

### COPY AND PASTE THE NAME OF THE FILE WHERE THE VIDEOS YOU'RE RENAMING ARE LOCATED!
# Note: This folder will be found in the lookit_videos folder that you used in script 1
  Participant_Folder_Name <- "HFP_B6dGdN_"

## Install "testthat" package if you don't already have it by removing the # before the next line
#install.packages("testthat")
library(testthat)

## Set up directory paths 
# Put the location of the folders you created in script one in the quotation marks to the right of the <- below
# If you just ran script 1, and haven't moved any folders since, you can run "newDir and the output can be pasted below
All_Participant_Videos <- "C:/Users/lw748/Downloads/lookit_videos/HFP_Lookit_Videos"
setwd(All_Participant_Videos)
getwd()

# By participant folder, which was named as Participant_Folder_Name above
Participant_Video_Location = paste0(All_Participant_Videos, "/", Participant_Folder_Name, "/")
setwd(Participant_Video_Location)
getwd()


## Extract condition information
{
  Participant_Study <- substr(Participant_Folder_Name,1,3)
  Participant_Child_ID <- substr(Participant_Folder_Name,5,10)
  Participant_Condition <- substr(Participant_Folder_Name,12,13)
}

# Remove non-trial specific information from video names
All_Participant_Videos <- list.files(path = Participant_Video_Location, pattern = ".mp4")
All_Participant_Videos_2 <- data.frame(filename = list.files(path = Participant_Video_Location, pattern = ".mp4"))
All_Participant_Videos_3 <- separate(data = All_Participant_Videos_2, col = filename, sep = "_", into = c("X1","X2","Video_Type","X4","X5","X6"))
Video_Trial_Type <- All_Participant_Videos_3$Video_Type
Study_Participant_Condition_TrialType = paste0(Participant_Folder_Name, "_", Video_Trial_Type)
file.rename(All_Participant_Videos,Study_Participant_Condition_TrialType)

## Create new video names
{
  # Consent video
    # Old Name
      Old_Consent_Video <- paste0("HFP_",Participant_Child_ID,"_",Participant_Condition,"_2-video-consent")
    # New Name
      Consent_Video <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Consent.mp4")
  
  # Instruction video
    # Old Name
      Old_Instruction_Video <- paste0("HFP_",Participant_Child_ID,"_",Participant_Condition,"_3-instructions-preview")
    # New Name
      Instruction_Video <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Instructions.mp4")
  
  # Condition 11
    # Old Names
      Old_Test_Video_11_1 <- paste0("HFP_", Participant_Child_ID, "_11_7-test-trials")
      Old_Test_Video_11_2 <- paste0("HFP_", Participant_Child_ID, "_11_8-test-trials")
      Old_Test_Video_11_3 <- paste0("HFP_", Participant_Child_ID, "_11_9-test-trials")
      Old_Test_Video_11_4 <- paste0("HFP_", Participant_Child_ID, "_11_10-test-trials")
      Old_Test_Video_11_5 <- paste0("HFP_", Participant_Child_ID, "_11_11-test-trials")
      Old_Test_Video_11_6 <- paste0("HFP_", Participant_Child_ID, "_11_12-test-trials")
    # New Names
      Test_Video_11_1 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test1_11_D_N.mp4")
      Test_Video_11_2 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test2_11_N_D.mp4")
      Test_Video_11_3 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test3_11_D_U.mp4")
      Test_Video_11_4 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test4_11_U_D.mp4")
      Test_Video_11_5 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test5_11_DN_DU.mp4")
      Test_Video_11_6 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test6_11_DU_DN.mp4")
  
  # Condition 12
    # Old Names
      Old_Test_Video_12_1 <- paste0("HFP_", Participant_Child_ID, "_12_7-test-trials")
      Old_Test_Video_12_2 <- paste0("HFP_", Participant_Child_ID, "_12_8-test-trials")
      Old_Test_Video_12_3 <- paste0("HFP_", Participant_Child_ID, "_12_9-test-trials")
      Old_Test_Video_12_4 <- paste0("HFP_", Participant_Child_ID, "_12_10-test-trials")
      Old_Test_Video_12_5 <- paste0("HFP_", Participant_Child_ID, "_12_11-test-trials")
      Old_Test_Video_12_6 <- paste0("HFP_", Participant_Child_ID, "_12_12-test-trials")
    # New Names
      Test_Video_12_1 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test1_12_D_U.mp4")
      Test_Video_12_2 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test2_12_U_D.mp4")
      Test_Video_12_3 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test3_12_DN_DU.mp4")
      Test_Video_12_4 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test4_12_DU_DN.mp4")
      Test_Video_12_5 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test5_12_D_N.mp4")
      Test_Video_12_6 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test6_12_N_D.mp4")
      
  # Condition 13
    # Old Names
      Old_Test_Video_13_1 <- paste0("HFP_", Participant_Child_ID, "_13_7-test-trials")
      Old_Test_Video_13_2 <- paste0("HFP_", Participant_Child_ID, "_13_8-test-trials")
      Old_Test_Video_13_3 <- paste0("HFP_", Participant_Child_ID, "_13_9-test-trials")
      Old_Test_Video_13_4 <- paste0("HFP_", Participant_Child_ID, "_13_10-test-trials")
      Old_Test_Video_13_5 <- paste0("HFP_", Participant_Child_ID, "_13_11-test-trials")
      Old_Test_Video_13_6 <- paste0("HFP_", Participant_Child_ID, "_13_12-test-trials")
    # New Names
      Test_Video_13_1 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test1_13_DN_DU.mp4")
      Test_Video_13_2 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test2_13_DU_DN.mp4")
      Test_Video_13_3 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test3_13_D_N.mp4")
      Test_Video_13_4 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test4_13_N_D.mp4")
      Test_Video_13_5 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test5_13_D_U.mp4")
      Test_Video_13_6 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test6_13_U_D.mp4")
  
  # Condition 21
    # Old Names
      Old_Test_Video_21_1 <- paste0("HFP_", Participant_Child_ID, "_21_7-test-trials")
      Old_Test_Video_21_2 <- paste0("HFP_", Participant_Child_ID, "_21_8-test-trials")
      Old_Test_Video_21_3 <- paste0("HFP_", Participant_Child_ID, "_21_9-test-trials")
      Old_Test_Video_21_4 <- paste0("HFP_", Participant_Child_ID, "_21_10-test-trials")
      Old_Test_Video_21_5 <- paste0("HFP_", Participant_Child_ID, "_21_11-test-trials")
      Old_Test_Video_21_6 <- paste0("HFP_", Participant_Child_ID, "_21_12-test-trials")
    # New Names
      Test_Video_21_1 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test1_21_M_N.mp4")
      Test_Video_21_2 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test2_21_N_M.mp4")
      Test_Video_21_3 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test3_21_M_U.mp4")
      Test_Video_21_4 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test4_21_U_M.mp4")
      Test_Video_21_5 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test5_21_MN_MU.mp4")
      Test_Video_21_6 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test6_21_MU_MN.mp4")
  
  # Condition 22
    # Old Names
      Old_Test_Video_22_1 <- paste0("HFP_", Participant_Child_ID, "_22_7-test-trials")
      Old_Test_Video_22_2 <- paste0("HFP_", Participant_Child_ID, "_22_8-test-trials")
      Old_Test_Video_22_3 <- paste0("HFP_", Participant_Child_ID, "_22_9-test-trials")
      Old_Test_Video_22_4 <- paste0("HFP_", Participant_Child_ID, "_22_10-test-trials")
      Old_Test_Video_22_5 <- paste0("HFP_", Participant_Child_ID, "_22_11-test-trials")
      Old_Test_Video_22_6 <- paste0("HFP_", Participant_Child_ID, "_22_12-test-trials")
    # New Names
      Test_Video_22_1 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test1_22_M_U.mp4")
      Test_Video_22_2 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test2_22_U_M.mp4")
      Test_Video_22_3 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test3_22_MN_MU.mp4")
      Test_Video_22_4 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test4_22_MU_MN.mp4")
      Test_Video_22_5 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test5_22_M_N.mp4")
      Test_Video_22_6 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test6_22_N_M.mp4")
  
  # Condition 23
    # Old Names
      Old_Test_Video_23_1 <- paste0("HFP_", Participant_Child_ID, "_23_7-test-trials")
      Old_Test_Video_23_2 <- paste0("HFP_", Participant_Child_ID, "_23_8-test-trials")
      Old_Test_Video_23_3 <- paste0("HFP_", Participant_Child_ID, "_23_9-test-trials")
      Old_Test_Video_23_4 <- paste0("HFP_", Participant_Child_ID, "_23_10-test-trials")
      Old_Test_Video_23_5 <- paste0("HFP_", Participant_Child_ID, "_23_11-test-trials")
      Old_Test_Video_23_6 <- paste0("HFP_", Participant_Child_ID, "_23_12-test-trials")
    # New Names
      Test_Video_23_1 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test1_23_MN_MU.mp4")
      Test_Video_23_2 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test2_23_MU_MN.mp4")
      Test_Video_23_3 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test3_23_M_N.mp4")
      Test_Video_23_4 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test4_23_N_M.mp4")
      Test_Video_23_5 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test5_23_M_U.mp4")
      Test_Video_23_6 <- paste0("HFP_", Participant_Child_ID, "_", Participant_Condition, "_Test6_23_U_M.mp4")
}
  
## Rename videos
{
  # Consent video
  file.rename(Old_Consent_Video,Consent_Video)
  
  # Instruction video
  file.rename(Old_Instruction_Video,Instruction_Video)
  
  # Condition 11
  file.rename(Old_Test_Video_11_1,Test_Video_11_1)
  file.rename(Old_Test_Video_11_2,Test_Video_11_2)
  file.rename(Old_Test_Video_11_3,Test_Video_11_3)
  file.rename(Old_Test_Video_11_4,Test_Video_11_4)
  file.rename(Old_Test_Video_11_5,Test_Video_11_5)
  file.rename(Old_Test_Video_11_6,Test_Video_11_6)
  
  # Condition 12
  file.rename(Old_Test_Video_12_1,Test_Video_12_1)
  file.rename(Old_Test_Video_12_2,Test_Video_12_2)
  file.rename(Old_Test_Video_12_3,Test_Video_12_3)
  file.rename(Old_Test_Video_12_4,Test_Video_12_4)
  file.rename(Old_Test_Video_12_5,Test_Video_12_5)
  file.rename(Old_Test_Video_12_6,Test_Video_12_6)
  
  # Condition 13
  file.rename(Old_Test_Video_13_1,Test_Video_13_1)
  file.rename(Old_Test_Video_13_2,Test_Video_13_2)
  file.rename(Old_Test_Video_13_3,Test_Video_13_3)
  file.rename(Old_Test_Video_13_4,Test_Video_13_4)
  file.rename(Old_Test_Video_13_5,Test_Video_13_5)
  file.rename(Old_Test_Video_13_6,Test_Video_13_6)
  
  # Condition 21
  file.rename(Old_Test_Video_21_1,Test_Video_21_1)
  file.rename(Old_Test_Video_21_2,Test_Video_21_2)
  file.rename(Old_Test_Video_21_3,Test_Video_21_3)
  file.rename(Old_Test_Video_21_4,Test_Video_21_4)
  file.rename(Old_Test_Video_21_5,Test_Video_21_5)
  file.rename(Old_Test_Video_21_6,Test_Video_21_6)
  
  # Condition 22
  file.rename(Old_Test_Video_22_1,Test_Video_22_1)
  file.rename(Old_Test_Video_22_2,Test_Video_22_2)
  file.rename(Old_Test_Video_22_3,Test_Video_22_3)
  file.rename(Old_Test_Video_22_4,Test_Video_22_4)
  file.rename(Old_Test_Video_22_5,Test_Video_22_5)
  file.rename(Old_Test_Video_22_6,Test_Video_22_6)
  
  # Condition 23
  file.rename(Old_Test_Video_23_1,Test_Video_23_1)
  file.rename(Old_Test_Video_23_2,Test_Video_23_2)
  file.rename(Old_Test_Video_23_3,Test_Video_23_3)
  file.rename(Old_Test_Video_23_4,Test_Video_23_4)
  file.rename(Old_Test_Video_23_5,Test_Video_23_5)
  file.rename(Old_Test_Video_23_6,Test_Video_23_6)
}

#### End of script 2 ####


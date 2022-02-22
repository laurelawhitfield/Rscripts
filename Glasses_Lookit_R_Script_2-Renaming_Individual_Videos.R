#### Script 2: Renaming Individual Videos
## Lookit Glasses video renaming script 
## Written by Laurel Whitfield (laurelalyssawhitfield@gmail.com)
## December 2021
# Note: It is best to wait about 10 minutes after running script 1 to run this script. This gives time for script 1 to complete it's functions, which is necessary for script 2.

### COPY AND PASTE THE NAME OF THE FILE WHERE THE VIDEOS YOU'RE RENAMING ARE LOCATED!
  # Note: This folder will be found in the lookit_videos folder that you used in script 1
Participant_Folder_Name <- "Glasses_3LQDZ6_0"

## Install "testthat" package if you don't already have it by removing the # before the next line
#install.packages("testthat")
library(testthat)

## Set up directory paths 
# Put the location of the folders you created in script one in the quotation marks to the right of the <- below
  # If you just ran script 1, and haven't moved any folders since, you can run "newDir and the output can be pasted below
All_Participant_Videos <- "C:/Users/lw748/Downloads/lookit_videos/Glasses_Lookit_Videos"
setwd(All_Participant_Videos)
getwd()
  
# By participant folder, which was named as Participant_Folder_Name above
Participant_Video_Location = paste0(All_Participant_Videos, "/", Participant_Folder_Name, "/")
setwd(Participant_Video_Location)
getwd()
  
    
## Extract condition information
Participant_Condition <- substr(Participant_Folder_Name,16,16)
     
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
      New_Test1_Video_Name <- paste0(Participant_Folder_Name, "_Sync_NC_R_Fam-1.mp4")
      file.rename(Old_Test1_Video_Name, New_Test1_Video_Name)
    }
    sapply(list, Video_Trial_Type == "8-test-trials")
    {
      Old_Test2_Video_Name <- "8-test-trials"
      New_Test2_Video_Name <- paste0(Participant_Folder_Name, "_Sync_NC_R_Fam-2.mp4")
      file.rename(Old_Test2_Video_Name, New_Test2_Video_Name)
    }
    sapply(list, Video_Trial_Type == "9-test-trials")
    {
      Old_Test3_Video_Name <- "9-test-trials"
      New_Test3_Video_Name <- paste0(Participant_Folder_Name, "_Sync_NC_R_Fam-3.mp4")
      file.rename(Old_Test3_Video_Name, New_Test3_Video_Name)
    }
    sapply(list, Video_Trial_Type == "10-test-trials")
    {
      Old_Test4_Video_Name <- "10-test-trials"
      New_Test4_Video_Name <- paste0(Participant_Folder_Name, "_Sync_NC_R_Fam-4.mp4")
      file.rename(Old_Test4_Video_Name, New_Test4_Video_Name)
    }
    sapply(list, Video_Trial_Type == "11-test-trials")
    {
      Old_Test5_Video_Name <- "11-test-trials"
      New_Test5_Video_Name <- paste0(Participant_Folder_Name, "_Sync_NC_R_Test-1-F.mp4")
      file.rename(Old_Test5_Video_Name, New_Test5_Video_Name)
    }
    sapply(list, Video_Trial_Type == "12-test-trials")
    {
      Old_Test6_Video_Name <- "12-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Sync_NC_S_Test-2-N.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
    {
      Old_Test6_Video_Name <- "13-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Sync_RC_R_Fam-1.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
    sapply(list, Video_Trial_Type == "14-test-trials")
    {
      Old_Test6_Video_Name <- "14-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Sync_RC_R_Fam-2.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
    sapply(list, Video_Trial_Type == "15-test-trials")
    {
      Old_Test6_Video_Name <- "15-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Sync_RC_R_Fam-3.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
    sapply(list, Video_Trial_Type == "16-test-trials")
    {
      Old_Test6_Video_Name <- "16-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Sync_RC_R_Fam-4.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
    sapply(list, Video_Trial_Type == "17-test-trials")
    {
      Old_Test6_Video_Name <- "17-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Sync_RC_R_Test-1-F.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
    sapply(list, Video_Trial_Type == "18-test-trials")
    {
      Old_Test6_Video_Name <- "18-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Sync_RC_S_Test-2-N.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
  )) 
  
  # Condition 1
  ifelse (Participant_Condition == 1, NULL, skip
  ( 
    sapply(list, Video_Trial_Type == "7-test-trials")
    {
      Old_Test1_Video_Name <- "7-test-trials"
      New_Test1_Video_Name <- paste0(Participant_Folder_Name, "_Sync_NC_S_Fam-1.mp4")
      file.rename(Old_Test1_Video_Name, New_Test1_Video_Name)
    }
    sapply(list, Video_Trial_Type == "8-test-trials")
    {
      Old_Test2_Video_Name <- "8-test-trials"
      New_Test2_Video_Name <- paste0(Participant_Folder_Name, "_Sync_NC_S_Fam-2.mp4")
      file.rename(Old_Test2_Video_Name, New_Test2_Video_Name)
    }
    sapply(list, Video_Trial_Type == "9-test-trials")
    {
      Old_Test3_Video_Name <- "9-test-trials"
      New_Test3_Video_Name <- paste0(Participant_Folder_Name, "_Sync_NC_S_Fam-3.mp4")
      file.rename(Old_Test3_Video_Name, New_Test3_Video_Name)
    }
    sapply(list, Video_Trial_Type == "10-test-trials")
    {
      Old_Test4_Video_Name <- "10-test-trials"
      New_Test4_Video_Name <- paste0(Participant_Folder_Name, "_Sync_NC_S_Fam-4.mp4")
      file.rename(Old_Test4_Video_Name, New_Test4_Video_Name)
    }
    sapply(list, Video_Trial_Type == "11-test-trials")
    {
      Old_Test5_Video_Name <- "11-test-trials"
      New_Test5_Video_Name <- paste0(Participant_Folder_Name, "_Sync_NC_S_Test-1-F.mp4")
      file.rename(Old_Test5_Video_Name, New_Test5_Video_Name)
    }
    sapply(list, Video_Trial_Type == "12-test-trials")
    {
      Old_Test6_Video_Name <- "12-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Sync_NC_R_Test-2-N.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
    {
      Old_Test6_Video_Name <- "13-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Sync_RC_S_Fam-1.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
    sapply(list, Video_Trial_Type == "14-test-trials")
    {
      Old_Test6_Video_Name <- "14-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Sync_RC_S_Fam-2.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
    sapply(list, Video_Trial_Type == "15-test-trials")
    {
      Old_Test6_Video_Name <- "15-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Sync_RC_S_Fam-3.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
    sapply(list, Video_Trial_Type == "16-test-trials")
    {
      Old_Test6_Video_Name <- "16-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Sync_RC_S_Fam-4.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
    sapply(list, Video_Trial_Type == "17-test-trials")
    {
      Old_Test6_Video_Name <- "17-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Sync_RC_S_Test-1-F.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
    sapply(list, Video_Trial_Type == "18-test-trials")
    {
      Old_Test6_Video_Name <- "18-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Sync_RC_R_Test-2-N.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
  )) 
  
  # Condition 2
  ifelse (Participant_Condition == 2, NULL, skip
  ( 
    sapply(list, Video_Trial_Type == "7-test-trials")
    {
      Old_Test1_Video_Name <- "7-test-trials"
      New_Test1_Video_Name <- paste0(Participant_Folder_Name, "_Async_NC_R_Fam-1.mp4")
      file.rename(Old_Test1_Video_Name, New_Test1_Video_Name)
    }
    sapply(list, Video_Trial_Type == "8-test-trials")
    {
      Old_Test2_Video_Name <- "8-test-trials"
      New_Test2_Video_Name <- paste0(Participant_Folder_Name, "_Async_NC_R_Fam-2.mp4")
      file.rename(Old_Test2_Video_Name, New_Test2_Video_Name)
    }
    sapply(list, Video_Trial_Type == "9-test-trials")
    {
      Old_Test3_Video_Name <- "9-test-trials"
      New_Test3_Video_Name <- paste0(Participant_Folder_Name, "_Async_NC_R_Fam-3.mp4")
      file.rename(Old_Test3_Video_Name, New_Test3_Video_Name)
    }
    sapply(list, Video_Trial_Type == "10-test-trials")
    {
      Old_Test4_Video_Name <- "10-test-trials"
      New_Test4_Video_Name <- paste0(Participant_Folder_Name, "_Async_NC_R_Fam-4.mp4")
      file.rename(Old_Test4_Video_Name, New_Test4_Video_Name)
    }
    sapply(list, Video_Trial_Type == "11-test-trials")
    {
      Old_Test5_Video_Name <- "11-test-trials"
      New_Test5_Video_Name <- paste0(Participant_Folder_Name, "_Async_NC_R_Test-1-F.mp4")
      file.rename(Old_Test5_Video_Name, New_Test5_Video_Name)
    }
    sapply(list, Video_Trial_Type == "12-test-trials")
    {
      Old_Test6_Video_Name <- "12-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Async_NC_S_Test-2-N.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
    {
      Old_Test6_Video_Name <- "13-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Async_RC_R_Fam-1.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
    sapply(list, Video_Trial_Type == "14-test-trials")
    {
      Old_Test6_Video_Name <- "14-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Async_RC_R_Fam-2.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
    sapply(list, Video_Trial_Type == "15-test-trials")
    {
      Old_Test6_Video_Name <- "15-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Async_RC_R_Fam-3.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
    sapply(list, Video_Trial_Type == "16-test-trials")
    {
      Old_Test6_Video_Name <- "16-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Async_RC_R_Fam-4.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
    sapply(list, Video_Trial_Type == "17-test-trials")
    {
      Old_Test6_Video_Name <- "17-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Async_RC_R_Test-1-F.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
    sapply(list, Video_Trial_Type == "18-test-trials")
    {
      Old_Test6_Video_Name <- "18-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Async_RC_S_Test-2-N.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
  ))
  
  # Condition 3
  ifelse (Participant_Condition == 3, NULL, skip  
  ( 
    sapply(list, Video_Trial_Type == "7-test-trials")
    {
      Old_Test1_Video_Name <- "7-test-trials"
      New_Test1_Video_Name <- paste0(Participant_Folder_Name, "_Async_NC_S_Fam-1.mp4")
      file.rename(Old_Test1_Video_Name, New_Test1_Video_Name)
    }
    sapply(list, Video_Trial_Type == "8-test-trials")
    {
      Old_Test2_Video_Name <- "8-test-trials"
      New_Test2_Video_Name <- paste0(Participant_Folder_Name, "_Async_NC_S_Fam-2.mp4")
      file.rename(Old_Test2_Video_Name, New_Test2_Video_Name)
    }
    sapply(list, Video_Trial_Type == "9-test-trials")
    {
      Old_Test3_Video_Name <- "9-test-trials"
      New_Test3_Video_Name <- paste0(Participant_Folder_Name, "_Async_NC_S_Fam-3.mp4")
      file.rename(Old_Test3_Video_Name, New_Test3_Video_Name)
    }
    sapply(list, Video_Trial_Type == "10-test-trials")
    {
      Old_Test4_Video_Name <- "10-test-trials"
      New_Test4_Video_Name <- paste0(Participant_Folder_Name, "_Async_NC_S_Fam-4.mp4")
      file.rename(Old_Test4_Video_Name, New_Test4_Video_Name)
    }
    sapply(list, Video_Trial_Type == "11-test-trials")
    {
      Old_Test5_Video_Name <- "11-test-trials"
      New_Test5_Video_Name <- paste0(Participant_Folder_Name, "_Async_NC_S_Test-1-F.mp4")
      file.rename(Old_Test5_Video_Name, New_Test5_Video_Name)
    }
    sapply(list, Video_Trial_Type == "12-test-trials")
    {
      Old_Test6_Video_Name <- "12-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Async_NC_R_Test-2-N.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
    {
      Old_Test6_Video_Name <- "13-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Async_RC_S_Fam-1.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
    sapply(list, Video_Trial_Type == "14-test-trials")
    {
      Old_Test6_Video_Name <- "14-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Async_RC_S_Fam-2.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
    sapply(list, Video_Trial_Type == "15-test-trials")
    {
      Old_Test6_Video_Name <- "15-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Async_RC_S_Fam-3.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
    sapply(list, Video_Trial_Type == "16-test-trials")
    {
      Old_Test6_Video_Name <- "16-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Async_RC_S_Fam-4.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
    sapply(list, Video_Trial_Type == "17-test-trials")
    {
      Old_Test6_Video_Name <- "17-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Async_RC_S_Test-1-F.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
    sapply(list, Video_Trial_Type == "18-test-trials")
    {
      Old_Test6_Video_Name <- "18-test-trials"
      New_Test6_Video_Name <- paste0(Participant_Folder_Name, "_Async_RC_R_Test-2-N.mp4")
      file.rename(Old_Test6_Video_Name, New_Test6_Video_Name)
    }
  ))
}
#### End of script 2 ####

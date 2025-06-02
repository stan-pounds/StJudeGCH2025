#######################################
# The hashtag # in R
# The hashtag tells R "Ignore this comment written for humans."
# If a line starts with a hashtag, R ignores the entire line.
# R also ignores everything to the right of a hashtag in the middle of a line.
# Use hashtags to tell humans (including yourself) what you're trying to do.

# R tries to do everything it is told on lines with no hashtag.
# R also tries to do everything it is told on a line to the left of a hashtag.





####################################
# Source the SBP code into R
# In EACH R session, this must be done BEFORE using SBP

sbp.link="https://raw.githubusercontent.com/stan-pounds/Simple-Biostats-Program/main/setup-SBP.R"
source(sbp.link)



########################################
# Be sure to have the utils packFDP0 for the download and choose.dir functions

get.package("utils") 

# if this doesn't work, it means source(sbp.link) didn't work
# double-check the WiFi connection and try these two sections again



########################################
# use R to download the Excel file with example data sets

local.dir=choose.dir()  # choose the directory where you want to save the example data sets
                        # the directory selection window may be behind other windows

dset.link="https://zenodo.org/records/5023900/files/coagulation_data_clean_R%20Open%20data.xlsx"
local.file=paste0(local.dir,"\\",basename(dset.link))
download.file(dset.link,local.file,mode="wb")

# you should see a progress bar for the download pop-up briefly
# you should see the file Biostat-Class-DataSets-Fall2023.xlsx in your chosen directory






#####################################
# Alternative Approach to Obtain Example Data Sets
#
# Visit https://zenodo.org/records/5023900
# Click the download icon, choose local directory to save the file





#####################################
# Read the coagulation data set from Excel into R

coag=read.data()

# choose the file coagulation_data_clean_R%20Open%20data.xlsx that you just saved
# choose the first and only data set
# selection window may be "behind" another window

# if you get an error, please notify the instructor
# you'll need some technical settings changed on your computer before going home
# don't panic, you may still continue with the rest of the exercise
# you should still be able to get the data in the next code section
  



##########################################
# Get documentation for the coag data set from zenodo
# View https://zenodo.org/records/5023900




####################################
# Descriptive stats, figures, and narrative for baseline FDP

describe(FDP0,coag)                     # default
describe(FDP,coag,fig=0)                # no figures
describe(FDP0,coag,fig=2)               # more figures
describe(FDP0,coag,fig=3)               # even more figures
describe(FDP0,coag,fig=2,clr="skyblue") # figures with skyblue color

# requires EXACT spelling and capitalization of data set and column name
# data set name: coag; column name: FDP0
# must use quotes for column name; must match name in R exactly


########################################
# The tbl option

describe(FDP0,coag,tbl=0)    # no table
describe(FDP0,coag,tbl=1)    # one table
describe(FDP0,coag,tbl=2)    # more tables (if any more to show)

#######################################
# The txt option

describe(FDP0,coag,txt=0)    # no text
describe(FDP0,coag,txt=1)    # some text
describe(FDP0,coag,txt=2)    # more text (if any more to show)
describe(FDP0,coag,txt=3)    # even more text (if any more to show)


####################################
# Descriptives for treatment (an unordered category variable)

describe(Treatment,coag)                       # default
describe(Treatment,coag,clr=c("red","blue"))   # red and blue for the figure
describe(Treatment,coag,clr=c("gold","green")) # gold and green


####################################
# How do I know the names of colors available in R?
# Show available color names in R

show.colors()



####################################
# show available color palettes in R

show.palettes(2)  # palettes of 2 colors


#############################################
# Use color palettes for figures


describe(Treatment,coag,clr="Tropic")        # use the "Tropic" color palette
describe(Treatment,coag,clr="Spectral")# use the "Spectral" color palette
describe(Treatment,coag,clr="rainbow")


#####################################
# Try multiple options

describe(Treatment,coag,
         clr="Spectral",fig=2,txt=0)

describe(Treatment,coag,
         clr="Lisbon",fig=1,tbl=0)

describe(Treatment,coag,
         fig=0,txt=1,tbl=0)


###################################
# Copy a table into Word

FDP0.result=describe(FDP0,coag)  # save results as "FDP.result" in R
word.table(FDP0.result)          # ask R to produce a table to copy into word

###################################
# Don't freak out if you get errors in R.
# Everyone who uses R gets errors.
# Dr. Pounds has been using R for over two decades.
# He has developed and published extensions of R.
# He still gets many many errors every time he uses R.
# Errors are usually just typos.
# So for practice, Run these lines with errors, fix the typos, run them again.

describe(fdp0,coag)         # capitalize FDP0
describe(FDP0,coag,fg=2)    # should be fig=2 instead of fg=2
describe(FDP0;coag)         # should be comma instead of semi-colon
describe(FDP0,coag,clr=red) # color name "red" must be in quotes








###############################
# If time permits:
# 
# compute descriptive stats and graphs of other columns in the coag data
# choose your own colors for the figures
# try other options: txt=0, txt=1, txt=2, tbl=0, tbl=1, tbl=2






#remove environment variables
rm(list=ls())

#load the required libraries 
library(sodium, lib.loc = .libPaths())
library(stringi)
library(readr)

#environment variable for working directory 
Sys.setenv(wd = "E:/rprojects/eed")

#assign environment variable as working directory 
currentdirectory <-  Sys.getenv(x = "wd", unset = "", names = NA)
setwd(currentdirectory)

#declare function encrypt - which encrypts the R code
encrypt <- function(filesourcepath, filepath, key, nonce, noncechar){
  filecontent <- read_file(filesourcepath)
  sfilecontent <- serialize(filecontent, NULL)
  filecontent <- data_encrypt(sfilecontent, key, nonce)
  filecontent <- as.vector(filecontent)
  writeBin(filecontent, filepath)
}


#encrypt initializer file one code
filesourcepath <- paste(getwd(), "/initializer1code.txt", sep = "")
filepath <- paste(getwd(), "/initializer1.txt", sep = "")
key <- hash(charToRaw(toString(as.character("this is a key"), width = NULL )))
nonce <- charToRaw(substring("A nonce of length twenty four", 1,24))
encrypt(filesourcepath, filepath, key,nonce, noncechar)


#encrypt initializer file two code
filesourcepath <- paste(getwd(), "/initializer2code.txt", sep = "")
filepath <- paste(getwd(), "/initializer2.txt", sep = "")
key <- hash(charToRaw(toString(as.character("this is a key"), width = NULL )))
nonce <- charToRaw(substring("A nonce of length twenty four", 1,24))
encrypt(filesourcepath, filepath, key,nonce, noncechar)


#encrypt initializer file three code
filesourcepath <- paste(getwd(), "/initializer3code.txt", sep = "")
filepath <- paste(getwd(), "/initializer3.txt", sep = "")
key <- hash(charToRaw(toString(as.character("this is a key"), width = NULL )))
nonce <- charToRaw(substring("A nonce of length twenty four", 1,24))
encrypt(filesourcepath, filepath, key,nonce, noncechar)


#encrypt core program code
filesourcepath <- paste(getwd(), "/corecode.txt", sep = "")
filepath <- paste(getwd(), "/core.txt", sep = "")
key <- hash(charToRaw(toString(as.character("this is a key"), width = NULL )))
nonce <- charToRaw(substring("A nonce of length twenty four", 1,24))
encrypt(filesourcepath, filepath, key,nonce, noncechar)

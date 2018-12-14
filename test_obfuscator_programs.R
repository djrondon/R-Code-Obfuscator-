#remove environment variables
rm(list=ls())

library(testthat)

Sys.setenv(testsource = "E:/rprojects/github_decrypt_execute_encrypt/user_executable.R")
testsource <- Sys.getenv(x = "testsource", unset = "", names = NA)

source(testsource)

context("testing obfuscator")

test_that("testing the execution time", 
  expect_equal({
    obfuscator()
    read_lines(paste(getwd(), "/corelog.txt", sep = ""))}
               ,format(Sys.time(), " %d %b %X "))
              )






#remove environment variables
rm(list=ls())

#load library testthat
library(testthat)

#manual testing 
#test_results <- test_dir("E:/rprojects/github_decrypt_execute_encrypt/", reporter="summary")


#automatic testing 
auto_test("E:/rprojects/github_decrypt_execute_encrypt/user_executable.R"
          , "E:/rprojects/github_decrypt_execute_encrypt/"
          , reporter = default_reporter(),
          env = test_env(), hash = TRUE)

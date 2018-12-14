# R Code Obfuscator 

R programs to effectively encrypt code, decrypt it for interpretor and then encrypt it back again. All seamlessly and without user intervention, with additional logic 
to protect against user interference. 

## Getting Started

Consider the core.R as an application in R which we need to obfuscate and deploy. Presently the core.R task is to store the system time stamp as confirmation of execution of itself. The user runs the user_executable.R which is not encrypted, the user_executable.R decrypts initializer1.R and executes it. The initializer1.R decrypts initializer2.R and executes it, similarly the initializer2.R decrypts initializer3.R and executes it, and the initializer3.R decrypts core.R and executes it. 

Each time a program gets decrypted, it gets encrypted again and the decrypted file gets removed from the system. The master branch shows the process using static nonce and key from sodium package.The "with API"" branch adds a functionality - using dynamic nonce and a static key, the nonce is generated randomly and sent to the an API on the cloud to store the same, we can send a request to retrieve the nonce and store a fresh one generated. 

The API can then decide whether to honour the request or simply send a wrong one, if it feels that there is a time lag in the requests between initializer1.R ~ initializer2.R ~ initializer3.R ~ core.R, implying that there is debug activated or some kind of an interception within the normal sequence explained in first paragraph. Thus using a dynamic API makes it hard to break down the sequence and capture the decrypte code.

### Prerequisites

Any R version that works on three packages namely RSodium, RStringi, Readr. This example was run on R 3.4.2, system with Windows 8.1, package versions as below:

readr_1.1.1 stringi_1.1.7 sodium_1.1 

```
library(sodium)
library(stringi)
library(readr)
```

## Deployment

The master branch contains a locally deployable, bare-bones proof of concept. While the "with API" contains a proof of concept with integration of an R API, making the obfuscator nearly fool proof. 

First run the builder.R to encrypt the code of four files namely 1. initializer1.R 2. initializer2.R 3. initializer3.R 4. core.R . Then deploy the encrypted code along with the user_executable.R . The user executes the user_executable.R script and is able to find the results of core program, for an example the timestamp is saved as program run confirmation. All the while the code is encrypted to the user.  

## Running the tests

The unit tests have been provided in file test_obfuscator_programs.R and automated tests can be performed via run_tests.R. 

## Contributing

Please feel free to contribute or provide feedback.

## Versioning

We use [Github](https://github.com/raminsu/R-Code-Obfuscator-) for versioning. 

## Author

* **Srirama Manikandan** - [Raminsu](https://github.com/raminsu) - ss.srirama@gmail.com 

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* 


# R Code Obfuscator 

R programs to effectively encrypt code, decrypt it for interpretor and then encrypt it back again. All seamlessly and without user intervention, with additional logic 
to protect against user interference. 

## Getting Started

The master branch contains a locally deployable, bare-bones proof of concept. While the "with API" contains a proof of concept with integration of an R API, making 
the obfuscator nearly fool proof. Refer to the readme of the branch on the justification.  See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Any R version that works on three packages namely RSodium, RStringi, Readr. This example was run on R 3.4.2, system with Windows 8.1, package versions as below:
readr_1.1.1 stringi_1.1.7 sodium_1.1 

```
library(sodium)
library(stringi)
library(readr)
```

## Deployment

First run the builder.R to encrypt the code of four files namely 1. initializer1.R 2. initializer2.R 3. initializer3.R 4. core.R . Then deploy the encrypted 
code along with the user_executable.R . The user executes the user_executable.R script and is able to find the results of core program, for an example the 
timestamp is saved as program run confirmation. All the while the code is encrypted to the user.  

## Contributing

Please feel free to contribute or provide feedback.

## Versioning

We use [Github](https://github.com/raminsu/R-Code-Obfuscator-) for versioning. 

## Author

* **Srirama Manikandan** - *Initial work* - [Raminsu](https://github.com/raminsu)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* 


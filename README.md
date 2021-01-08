<!-- PROJECT LOGO -->
<p align="center">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Filter Out Spam!</h3>

  <p align="center">
    Identify which emails are spam through logistic regression so we can tell the email system to filter them out!
    <br />
    <a href="https://github.com/Mathurkarishma/filter-spam-emails"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/Mathurkarishma/filter-spam-emails/issues">Report Bug</a>
    ·
    <a href="https://github.com/Mathurkarishma/filter-spam-emails/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

We will be speaking into a Spambase dataset and answering how to know which emails are spam so we can tell the email system to filter out those in particular.  We need to use a model that assists with probability and choice behavior analysis.  Logistic regression was built to handle choice behavior and a binomial model through probability computations.  Multiple iterations in a software package like RStudio helps to carry out the principle of maximum likelihood.  This ensures consistent and asymptoticly efficient estimates.

Here is a [link](http://archive.ics.uci.edu/ml/datasets/Spambase) to the Spambase dataset information.

### Built With

* [R](https://cran.r-project.org/)
* [RStudio](https://rstudio.com/)


<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running, download the `logistic-regression.R` and the text input file, `spambase.csv`. Then run the code in an IDE software, such as RStudio.  Set the working directory to the location of the CSV file.

<!-- USAGE EXAMPLES -->
## Usage

The code guides you through the following:

1. Importing the CSV file
2. Visualizing the formatting of the variables (datatypes, number of rows/columns, measures of central tendancy, statistical descriptions, etc.)
3. Pre-processing such as reducing irrelevant variables, while maintaining integrity, for the purpose of our analysis
4. Set seed value to enable reproducing the results when the method is re-run
5. Splitting the dataset into a training set and test set
6. Perform the logistic regression model and evaluate results
7. Change parameters to improve accuracy
8. Visualize our rules using a residual plot
9. Use data model to achieve lowest possible AIC through the minimum adequate model


<!-- CONTACT -->
## Contact

Karishma Mathur - karishma324@gmail.com

Project Link: [https://github.com/Mathurkarishma/filter-spam-emails](https://github.com/Mathurkarishma/filter-spam-emails)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* Dr. Firdu Bati at [University of Maryland, Global Campus](https://www.umgc.edu/) - Fall 2019 </br >
* [Spambase Dataset Description](http://archive.ics.uci.edu/ml/datasets/Spambase)

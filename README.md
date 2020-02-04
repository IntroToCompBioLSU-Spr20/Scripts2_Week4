# Scripting in Bash

## Introduction to scripts

- What is a script?
  - Fundamentally, a bash script is just a file containing a series of bash commands.
  - Scripts are formatted as text files. But the things in this file are special.
  - The first line of a script file tells the computer in which language (i.e., shell) we're writing our script. This line starts with `#!` - also known as a shebang. The shebang tells Terminal that we're about to indicate which language we're going to use.
  - Follow the shebang with the path to the shell that you'd like to use. Yes, the shell itself is a program!
    - `#! /bin/bash`
  - Let's start by creating your first script - `myScript.sh`
    - `nano myScript.sh`
    - Add the shebang line
    - Add two commands in the body of the file
      - `echo "Hello, "$USER"!"`
      - `echo "I'M A SCRIPT AND I WORK!"`

- Command-line Arguments
    - To access the argument from inside the script, bash reserves the special variables `$1`, `$2`, `$3`, ...
    - For practice, go back to `myScript.sh` that we created earlier and change `$USER` to `$1`. Now, run it by typing `myScript.sh <YOUR_NAME>`

## Downloading a file from the command line

The data file to be used in your assignment is available here: [chiari.summary_statistics.csv](https://raw.githubusercontent.com/IntroToCompBioLSU-Spr20/Scripts2_Week4/master/chiari.summary_statistics.csv)

While we could copy and paste the contents of this file into a new file using the graphical interface, this approach becomes  tedious and difficult with lots of files or large files. Instead, we'd like to be able to download the file contents directly from the command line. To do this, we can use the `curl` command. To start, try executing this command

`curl https://raw.githubusercontent.com/IntroToCompBioLSU-Spr20/Scripts2_Week4/master/chiari.summary_statistics.csv`

What happens? How could we save the contents that we're downloading to a file directly?

## Command line find-and-replace

You'll often need to clean up the contents of data files before doing additional analyses. In this case, we'd like to replace commas with spaces. To do this from the command line, we can use a powerful tool called `sed`. `sed`, which is short for "stream editor", can do many different things, but we'll just use it for simple find-and-replace for now. Try executing this

`sed 's/,/ /g' chiari.summary_statistics.csv`

What do you see? What's different compared to the original contents of the file?

What about when you run this?

`sed -i "_backup" 's/,/ /g' chiari.summary_statistics.csv`

` ******  the -i will edit the file and save/replace the text with the sed command output
 the backup will store the origional contents in the backup and the edits are stored in the origional`

Note that this syntax will stay the same for any find and replace operation that we want to do. The only thing that will change is the text to find and replace (between the slashes).

```
Assignment 3

(1) Download and save the file above (`chiari.summary_statistics.csv`)
(2) Count the lines in the file and store this value in a variable
(3) Using this value and tail, extract all the lines in the file except the header (top) line, then pipe to -->
(4) grep to extract lines ending with an HoT alignment score of 1, then pipe to -->
(5) grep to extract lines with 14 taxa (think about what pattern would allow this) -->
(6) then extract and save only the gene names from these lines

After you've worked out the commands needed to do this, put them in a script and make sure you can execute it.

Now, generalize your script to accept any HoT score and number of taxa as command-line arguments.

Turn in this generalized script in the homework folder and submit via a pull request.

Will be due Friday, Feb. 7th at noon.
```

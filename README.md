# Test for Applicants

Testing Regres API (REST) with Cucumber and HttpParty in Ruby language
https://reqres.in/

### Introduction ###

I wrote my tests trying to write as few code as possible.
I made the most of the methods.

Within the project files, on top of each method there is a comment,
with a summary of what the method does.

I tried to write a minimum number of test scenarios
which guarantees the most important features of the API.

In sumary to run the prujet, just run: $cucumber. 
End to generate the report just run: $cucumber -p report.

IT IS ALL EXPLAINED BELOW:

## Setting up the environment ##

### Installing rbenv ###
Execute os seguintes comandos:
```shell
$ git clone https://github.com/rbenv/rbenv.git ~/.rbenv

$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
$ echo 'eval "$(rbenv init -)"' >> ~/.bashrc
$ source ~/.bashrc
```

Add in ~/.bash_profile:
```shell
eval "$(rbenv init -)"
```

List available versions:
```shell
rbenv install -l
```

Install a version:
```shell
rbenv install 2.4.2
```

Make the default version for all projects
```shell
$ rbenv global 2.4.2
```

Check the installed Ruby version
```shell
$ ruby -v
```

### Download project ###

```shell
git clone https://github.com/xing/test_qa_api_kununu-eduardofinotti.git
```

### Installing the bundler ###
Navigate within the project and install the bundler
```shell
cd /test_qa_api_kununu-eduardofinotti
gem install bundler
```

### Installing the gems ###
Run the command at the root of the project:
```shell
bundle install
```

### To run ###
Run the command at the root of the project:
```shell
cucumber
```

### To run with report ###
Run the command at the root of the project:
```shell
cucumber -p report
```
So, the report is generated in folder /report.
The report has the current date and hour.

 ### The Author ###

Eduardo Finotti
E-mail: eduardo.finotti@hotmail.com
LinkedIn: https://www.linkedin.com/in/eduardo-finotti/

## ----------------------------------------------- ##

## Context

As a QA in an Agile team, you’re part of a team developing a new cool feature, which mainly comprises a front-end application and a REST API. 
As so you must ensure all front-end API dependent operations respond successfully, according to the business rules and any unwanted changes are detected prior to the production environment. 

With this in mind your team needs to ensure that on each API deploy you have no fallbacks and REST operations are according the architecture. 
Having this in mind you’ll prototype a proof-of-concept to the CTO so he understands how important this is.

## Story

Please build a project that ensures a rigid testing plan of the following REQRES API: **[https://reqres.in/](https://reqres.in/).**

You’ll find the REST operations permitted in the link provided. Exploit the greater coverage as possible with all possible scenarios in mind. 

## Enhancement

Choose *one* of the following and add it to your implementation:

1. Test report: Add a reporting system to your implementation in order to have the visibility of your coverage. Please also have in mind that the report sytem should also provide an easy integration with a centralized test report system.
2. Dockerization: Build a Docker support in order to take the API tests system to the CI&CD pipeline.	

## Requirements

Feel free to adopt the best technologies you find suitable for the end goal. Still we need to impose the following requirements:

1. Please use git as a version control system. Make sure that you have clear commit messages and understandable steps in your git-history ([How to Write a Git Commit Message](https://chris.beams.io/posts/git-commit/)).
2. Document your work.
3. Provide a README and instructions for how we can run your solution. **Note** It should be runnable with one command.
4. Respect modularity and scalable solution for further test suites.
# Bankapp

This is a simple to use app which can:
- store information such as deposits or withdrawals
- show a record of them by order of date.

I was not allowed to use databases for this task so I organized the print_statement method to 
.push all of the deposits and withdrawals made to the array of statement headlines to match the given template.

I used RSpec for unit tests and simplecov for measuring coverage. The unit tests would test the methods 
in the bankaccount class. 


## Installation

First clone this from your CLI

```bash
git clone git@github.com:Aiman15049/Bankapp.git
```

to utilize the app make sure the rspec gem is in your Gemfile

```bash
gem 'rspec'
bundle install
```
## How to use 

This app runs completely on IRB. 
Inside your REPL environment type:

```bash
require './lib/bankaccount.rb'
bankaccount = Bankaccount.new
bankaccount.deposit(2000)
bankaccount.deposit(1000)
bankaccount.withdraw(500)
bankaccount.print_statement
```
you should see a list of your statements, as shown in the specification [here](https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md)

## Authors

Aiman Wahid 

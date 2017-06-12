Bank Tech Test
=================

Makers Academy week ten practice tech test, completed in Ruby using RSpec for unit tests. The app creates account objects, which can make deposits and withdrawals on their balances, and print account statements.

Installation & Testing
--------

* Simply fork or clone this repo, and run `bundle install`
* Run `irb`, and `require './lib/account.rb'. 
* Create a new Account object, passing it Balance and Record as arguments
* All methods are then invoked through your Account instance
* Tests can be run by running `rspec` on the command line in the main project directory
* Likewise, run `rubocop` in the main directory to view syntax offenses

Features
--------

* Account holders can deposit and withdraw funds
* Transaction details, including a timestamp, are stored in the account balance
* Each account's record can use its `print_statement` method to log transactions to the console
* Account statements round amounts to two decimal places, and include trailing zeros

![20170612_160737-min](https://user-images.githubusercontent.com/20523607/27041386-c08eb1f4-4f8b-11e7-9c40-7635cf3e8c49.jpg)

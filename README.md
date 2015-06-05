# Jetsms

SMS sender for Turkey JetSMS

This gem is for sending SMS using JetSMS services

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jetsms'
```

And then execute:

$ bundle

Or install it yourself as:

$ gem install jetsms

config/initialize/jetsms.rb
```ruby

require 'jetsms.rb'

JetSMS.configure do |config|
	config.usercode = 'UserName'
	config.password = 'Password'
end

```


## Usage

```ruby
	NetGSM::SMS.send_sms('123', 'test', from: 'COMPANY', turkish: true)
```

## Version

0.0.7

Usage Document Added


0.0.6

Xml Body Fixed
Sms Send Success


0.0.5

Bug Fix
UTF-8 Option Added


0.0.4

Bug Fix
Date Option Added


0.0.3

Bug Fix
Single SMS Added

0.0.2

Bug Fix


0.0.1

First Commit
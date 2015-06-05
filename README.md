# JetSMS

[![Gem Version](https://badge.fury.io/rb/jetsms.svg)](http://badge.fury.io/rb/jetsms)

SMS sender for Turkey JetSMS

This gem is for sending SMS using JetSMS services

## Installation

http://www.jetsms.net

Add this line to your application's Gemfile:

```ruby
gem 'jetsms'
```

And then execute:

$ bundle

Or install it yourself as:

$ gem install jetsms

config/initializers/jetsms.rb
```ruby

require 'jetsms.rb'

JetSMS.configure do |config|
	config.usercode = 'UserName'
	config.password = 'Password'
end

```


## Usage

```ruby
	JetSMS::SMS.send_sms('123', 'test', from: 'COMPANY', turkish: true)
```

## Version

__0.0.7__
* Usage Document Added


__0.0.6__
* Xml Body Fixed
* Sms Send Success


__0.0.5__
* Bug Fix
* UTF-8 Option Added


__0.0.4__
* Bug Fix
* Date Option Added


__0.0.3__
* Bug Fix
* Single SMS Added

__0.0.2__
* Bug Fix

__0.0.1__
* First Commit

## Thanks
Big Boss Hüseyin Gömleksizoğlu
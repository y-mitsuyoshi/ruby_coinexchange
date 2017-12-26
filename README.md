# RubyCoinexchange

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/ruby_coinexchange`. To experiment with that code, run `bin/console` for an interactive prompt.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruby_coinexchange'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby_coinexchange

## Usage
#### English 
This gem is a gem to connect to api on coinexchange exchange.  
https://www.coinexchange.io  
http://coinexchangeio.github.io/slate/  


```ruby
ce = Coinexchange.new
#Acquire all the markets
ce.market_summaries
#Acquisition of individual stock market
ce.market_summary (ticker_code)
#Acquire all issues
ce.currencies
#Acquisition of individual brands
ce.currency (ticker_code)
```
All ticker_code can be checked with "ce.currencies".
If it is bitcoin it is BTC.

Please enter the following TickerCode part.
```ruby
ce.currency("BTC")
=> {"CurrencyID"=>"1",
 "Name"=>"Bitcoin",
 "TickerCode"=>"BTC",
 "WalletStatus"=>"online",
 "Type"=>"currency"}
```


#### Japanese
このgemはcoinexchange取引所のapiに接続するためのgemです。  
https://www.coinexchange.io  
http://coinexchangeio.github.io/slate/  


```ruby
ce = Coinexchange.new
#全銘柄市場取得
ce.market_summaries
#個別銘柄市場取得
ce.market_summary(ticker_code)
#全銘柄取得
ce.currencies
#個別銘柄取得
ce.currency(ticker_code)
```
全てのticker_codeは"ce.currencies"で確かめることができます。  
bitcoinならBTCです。  

下記のTickerCodeの部分を入力してください。
```ruby
ce.currency("BTC")
=> {"CurrencyID"=>"1",
 "Name"=>"Bitcoin",
 "TickerCode"=>"BTC",
 "WalletStatus"=>"online",
 "Type"=>"currency"}
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/ruby_coinexchange.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

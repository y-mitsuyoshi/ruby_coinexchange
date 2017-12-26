require 'uri'
require 'json'
require 'net/http'

class Coinexchange
  BASE_URL = "https://www.coinexchange.io/api/v1/"

  def markets
    url = "#{BASE_URL}getmarkets"
    get_data(url)
  end

  def market_summaries
    url = "#{BASE_URL}getmarketsummaries"
    get_data(url)
  end

  def market_summary(ticker_code)
    currency = currency(ticker_code)
    currency_id = currency["CurrencyID"]
    url ="#{BASE_URL}getmarketsummary?market_id=#{currency_id}"
    get_data(url)
  end

  def currencies
    url = "#{BASE_URL}getcurrencies"
    get_data(url)
  end

  def currency(ticker_code)
    currencies_data = currencies
    currencies_data.find { |currency| currency['TickerCode'] == ticker_code }
  end

  def get_data(url)
    uri = URI.parse(url)
    json = Net::HTTP.get(uri)
    JSON.parse(json)["result"]
  end
end

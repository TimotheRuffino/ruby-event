def init_nokogiri(url)
  page = Nokogiri::HTML(open(url))
  return page
end

page = Nokogiri::HTML(open("https://coinmarketcap.com/"))

def crypto
name = page.xpath('//div[@class="cmc-table__table-wrapper-outer"]/div/table/tbody/tr[@class="cmc-table-row"]/td[contains(@class, "symbol")]')

  name.each do |names|
    crypto_array << names.text
  end
  return crypto_array
end


def valeur
price = page.xpath('//div[@class="cmc-table__table-wrapper-outer"]/div/table/tbody/tr[@class="cmc-table-row"]/td[contains(@class, "price")]')
  
  price.each do |prices|
    price_array << prices.text
  end 
  return price_array
end


def hash(crypto_array, price_array)
  crypto_array=[]
  price_array=[]
  puts hash2 = Hash[crypto_array.zip(price_array.map)]

end

hash

require 'rubygems'
require 'nokogiri'
require 'open-uri'



def init_nokogiri(url)
  page = Nokogiri::HTML(open(url))
  return page
end

def main
  page = init_nokogiri("https://coinmarketcap.com/all/views/all/")
  xpath_crypto = '//div[@class="cmc-table__table-wrapper-outer"]/div/table/tbody/tr[@class="cmc-table-row"]/td[contains(@class, "symbol")]'
  xpath_price = '//div[@class="cmc-table__table-wrapper-outer"]/div/table/tbody/tr[@class="cmc-table-row"]/td[contains(@class, "price")]'
  nbr_of_symbols = page.xpath(xpath_crypto).length
  array_crypto = creation_array(page, xpath_crypto, xpath_price, nbr_of_symbols)
  p array_crypto

end

def creation_array(page, xpath_crypto, xpath_price, nbr_of_symbols)
  xpath_price = xpath_price.map{|i| i.delete("$").to_f}
  hash2 = Hash[xpath_crypto.zip(xpath_price.map)]
return hash2
end



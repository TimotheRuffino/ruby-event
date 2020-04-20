require 'pry'
require 'watir'
require 'capybara'
require 'launchy'

browser = Watir::Browser.new(:firefox)
browser.goto 'google.com'


def check_if_user_gave_input
  puts "Que veux tu savoir ?"
  puts ARGV
  abort("Pour commencer ta recherche entre google_searcher.rb + ta recherche ") if ARGV.empty?
end



def construct_url
  array = ARGV.flat_map { |x| [x, "+"] }[0...-1]
  return array
end


def research
  system("open", " https://www.google.com/search?q=#{array}")
end

binding.pry

def perform 
  check_if_user_gave_input
  construct_url
  research
end

perform
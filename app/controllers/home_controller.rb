class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'

    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    #JSON formatting 
    @response = Net::HTTP.get(@uri)
    #ruby hash formatting
    @coins = JSON.parse(@response)

  end
  
  def about
  end
  
  def lookup
    require 'net/http'
    require 'json'

    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    #JSON formatting 
    @response = Net::HTTP.get(@uri)
    #ruby hash formatting
    @lookup_coin = JSON.parse(@response)
    
    @symbol = params[:sym]
    
    if @symbol
      @symbol = @symbol.upcase
    end
    
    
  end
  
  
end

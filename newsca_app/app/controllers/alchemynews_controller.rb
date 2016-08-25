class AlchemynewsController < ApplicationController
  def index
      require "http"
      require "json"

      key = ENV['alchemyNews']
      response = HTTP.get("http://gateway-a.watsonplatform.net/calls/data/GetNews?apikey=#{key}&outputMode=json&start=now-30m&end=now&count=6&return=enriched.url.docSentiment,enriched.url.image,enriched.url.taxonomy,enriched.url.text,enriched.url.title,enriched.url.url")
      parsed_body = JSON.parse(response)
      render json: parsed_body
  end

  # def new

  # end

  # def show
  #   require "http"
  #   require "json"

  #   key = ENV['alchemyNews']
  #   query = 'q.enriched.url.enrichedTitle.keywords.keyword.text=' + "#{params[:keyword]}";
  #   puts query;
  #   response = HTTP.get("http://gateway-a.watsonplatform.net/calls/data/GetNews?apikey=#{key}&outputMode=json&outputMode=json&start=now-30m&end=now&count=2$#{query}&return=enriched.url.author,enriched.url.docSentiment,enriched.url.image,enriched.url.text,enriched.url.title,enriched.url.url")
  #   parsed_body = JSON.parse(response)
  #   render json: parsed_body
  # end

end


    # if user_signed_in?
    #   require "http"
    #   require "json"

    #   key = ENV['alchemyNews']
    #   query = '&count=10' + querysentiment;
    #   response = HTTP.get("http://gateway-a.watsonplatform.net/calls/data/GetNews?apikey=#{key}&outputMode=json&outputMode=json&start=now-1h&end=now#{query}&return=enriched.url.docSentiment,enriched.url.image,enriched.url.taxonomy,enriched.url.text,enriched.url.title,enriched.url.url")
    #   parsed_body = JSON.parse(response)
    #   render json: parsed_body

    # else

    # require "http"
    # require "json"

    # key = ENV['alchemyNews']
    # query = '&count=4&q.enriched.url.enrichedTitle.keywords.keyword.text=' + "#{params[:keyword]}";
    # puts query;
    # puts "hello"
    # response = HTTP.get("http://gateway-a.watsonplatform.net/calls/data/GetNews?apikey=#{key}&outputMode=json&outputMode=json&start=now-1h&end=now#{query}&return=enriched.url.author,enriched.url.docSentiment,enriched.url.image,enriched.url.taxonomy,enriched.url.text,enriched.url.title,enriched.url.url")
    # parsed_body = JSON.parse(response)
    # render json: parsed_body
    # console.log(parsed_body)
    # end

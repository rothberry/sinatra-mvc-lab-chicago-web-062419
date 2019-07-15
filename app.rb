require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/words' do
        @words = PigLatinizer.new#(params[:words].to_s)
        # @words.piglatinizer(params[:words])
        # erb :output
    end

    get '/words' do
        
        erb :output
    end


end
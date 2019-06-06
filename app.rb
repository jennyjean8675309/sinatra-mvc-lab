require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        user_phrase = params['user_phrase']

        latinizer = PigLatinizer.new
        @latinized_phrase = latinizer.piglatinize(user_phrase)

        erb :display
    end
end
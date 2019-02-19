require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @piglatin_word = PigLatinizer.new(params[user_phrase])
    binding.pry
    erb :display_word
  end


end
# binding.pry

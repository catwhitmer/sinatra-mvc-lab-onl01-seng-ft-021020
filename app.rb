require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    @user_phrase = PigLatinizer.new.to_pig_latin(user_phrase: params[:user_phrase])
    @user_phrase.save
    erb :piglatinized
  end
end
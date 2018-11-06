require('sinatra')
require('sinatra/contrib/all') if development?
require('./models/rps_model.rb')
also_reload('./models/*')



get '/:hand1/:hand2' do
  result = RPSGame.check_win(params[:hand1], params[:hand2])
  @result = result
  erb( :result )
end




get '/' do
  erb (:home)#this has to have the same name as home.erb etc
end

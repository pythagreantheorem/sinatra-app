get '/hello' do
  'Hello world!'
end

get '/users' do 
   @user = User.all
   names = []
   @user.each do |user|
    names << user.salutation
   end
   "Here are all the users #{names.join(' ')}"
end

# routes.rb - continued

get '/user/:id' do
  binding.pry
end
require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/contact'
require './lib/phone_number'
require './lib/name'

get '/'  do
  @contacts = Contact.all_contacts
  erb :index
end

post '/contacts' do
  name = params['contact_names']
  Contact.new(contact_names: name).save
  @contacts = Contact.all_contacts
  redirect '/'
end


post '/phone_numbers' do
  number = params['number']
  @contact = Contact.find(params['contact_id']) # params from hidden input on contact.erb
  @contact.add_number(number)
  erb :contact
end

get '/contact/:id' do
  @contact = Contact.find(params['id'])
  erb :contact
end

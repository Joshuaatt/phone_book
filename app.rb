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

post '/contact' do
  name = params.fetch 'contact_names'
  phone = PhoneNumber.new(number: params.fetch('phone_number'))
  Contact.new(contact_names: name, contact_phone_numbers: phone).save
  redirect '/'
end

get '/contacts/' do

  @contacts = Contact.all_contacts
  @phone_number =
  erb :contacts
end

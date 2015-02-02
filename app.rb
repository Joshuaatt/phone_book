require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')
require('./lib/phone_number')
require('./lib/name')

get('/') do
  @contacts = Contact.all_contacts()
  erb(:index)
end

post('/contact') do
  name = params.fetch('contact_names')
  phone = params.fetch 'phone_number'
  Contact.new(contact_names: name, contact_phone_numbers: phone).save
  redirect '/'
end

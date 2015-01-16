require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')
require('./lib/phone_number')
require('./lib/name')

get('/') do
  @contact = Contact.all_contacts()
  erb(:index)
end

post('/contact') do
  name = params.fetch('name')
  Contact.new(name).save()
  @contact = Contact.all_contacts()
  erb(:index)
end

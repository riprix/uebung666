# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c1=Customer.create(:first_name =>'Test', :last_name => 'Tester', :adress => 'Wutzkyallee 52')
c2=Customer.create(:first_name =>'Arnold', :last_name 'Schwarzenegger', :adress 'Hollywood Blvd 123')
c3=Customer.create(:first_name =>'Bukky', :last_name 'Bunny', :adress 'Loneytoonstreet 334')

a1=Accounts.create(:id => 123, :number => 123, :balance => 1000, :customer_id => c1.id)
a2=Accounts.create(:id => 321, :number => 321, :balance => 100, :customer_id => c2.id)
a3=Accounts.create(:id => 312, :number => 312, :balance => 10000, :customer_id => c3.id)

t1= Transaction.create(:amount => 250, :description => 'Bafög',
:balance_after_transaction => 750, 
:accounts_id => a1.id)
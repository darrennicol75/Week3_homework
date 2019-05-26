require_relative('models/ticket')
require_relative('models/film')
require_relative('models/customer')

require('pry')

Ticket.delete_all()
Film.delete_all()
Customer.delete_all()

customer1 = Customer.new({
    'name' => 'John Smith',
    'funds' => 50
  })
customer1.save()

customer2 = Customer.new({
    'name' => 'Sheila Smith',
    'funds' => 20
  })
customer2.save()

customer3 = Customer.new({
    'name' => 'Tom Baxter',
    'funds' => 10
  })
customer3.save()

customer4 = Customer.new({
    'name' => 'Tracy Baxter',
    'funds' => 70
  })
customer4.save()

film1 = Film.new({
    'title' => 'John Wicks 3',
    'price' => 12, 'time' => 1200
  })
film1.save()

film2 = Film.new({
    'title' => 'Rocket Man',
    'price' => 15, 'time' => 1300
  })
film2.save()

ticket1 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film1.id, 'fee' => 7})
ticket1.save()

ticket2 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film1.id, 'fee' => 7})
ticket2.save()

ticket3 = Ticket.new({'customer_id' => customer3.id, 'film_id' => film2.id, 'fee' => 15})
ticket3.save()

ticket4 = Ticket.new({'customer_id' => customer4.id, 'film_id' => film2.id, 'fee' => 15})
ticket4.save()

ticket5 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film2.id, 'fee' => 15})
ticket5.save()

ticket6 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film2.id, 'fee' => 15})
ticket6.save()

film1.price = 7
film1.update()

all_tickets = Ticket.all()

binding.pry
nil

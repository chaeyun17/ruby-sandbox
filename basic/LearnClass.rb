class Customer
  @@no_of_customers = 0
  def initialize(id, name, addr)
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
    @@no_of_customers += 1
  end

  def getNo
    @@no_of_customers
  end

end

# cust1 = Customer.new("1", "john", "wisdom aparts")
cust1 = Customer.new(:id=>"1", :name=>"john", :addr=>"wisdom aparts")
puts cust1.getNo
cust2 = Customer.new("2", "poul", "new empire")
puts cust2.getNo


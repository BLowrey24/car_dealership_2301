class Car 
  attr_reader :make, 
              :model,
              :monthly_payment,
              :loan_length

  def initialize(make_model, monthly_payment, loan_length)
    @make, @model = make_model.split(" ")
    @monthly_payment = monthly_payment
    @loan_length = loan_length
  end

  def total_cost
    @monthly_payment * @loan_length
  end
end
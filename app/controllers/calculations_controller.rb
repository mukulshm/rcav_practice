class CalculationsController < ApplicationController
  def instructions
  end

  def sqrt
    @calculations = params["the_square"]
    @yield = Math.sqrt(@calculations.to_i)
  end

  def pmt
    #/payment/INTEREST_RATE/NUMBER_OF_PAYMENTS/PRINCIPAL_VALUE
    @interestrate = params["INTEREST_RATE"].to_i
    @payments = params["NUMBER_OF_PAYMENTS"].to_i
    @principal = params["PRINCIPAL_VALUE"].to_i
    @yield =((@principal*@interestrate)/(1-(1+@interestrate)^(-@payments)))
  end

end

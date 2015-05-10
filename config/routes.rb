Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square_root/:the_square", { :controller => "calculations", :action => "sqrt" })
  get("/payment/:INTEREST_RATE/:NUMBER_OF_PAYMENTS/:PRINCIPAL_VALUE", { :controller => "calculations", :action => "pmt" })
end

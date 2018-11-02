class GreeterController < ApplicationController
  def hello
  	random_names = ["Amy", "Luke", "Wyatt", "Eli", "Alivia"]
  	@name = random_names.sample
  	@time = Time.now
  	@times_displayed ||= 0
  	@times_displayed += 1
  end
  def goodbye
  	random_names2 = ["Felicia"]
  	@name = random_names2.sample
  	@time = Time.now
  end
end

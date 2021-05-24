class WelcomeController < ApplicationController
  def index
    @parks = ParkFacade.parks("KY")
    binding.pry
  end
end

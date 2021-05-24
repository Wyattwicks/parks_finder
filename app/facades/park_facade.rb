class ParkFacade
  class << self

    def parks(state_code)
      parks_search = ParkService.state_parks(state_code)
      parks_by_state = parks_search[:results]
    end
  end
end
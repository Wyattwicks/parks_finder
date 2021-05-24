class ParkIndex
  attr_reader :fullName,
              :description,
              :directionsInfo,
              :operatingHours

  def initialize(data)
    @name = data[:fullName]
    @title = data[:description]
    @title = data[:directionsInfo]
    @vote_average = data[:operatingHours]
  end
end
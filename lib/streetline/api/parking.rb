module Streetline
  module API
    module Parking

      # @param options [Hash]
      # @return [Array]
      def destinations(options = {})
        response = get("/parkerdata/v1/ParkingDestinations.json", options)
        response["ParkingDestinations"]
      end
    end
  end
end

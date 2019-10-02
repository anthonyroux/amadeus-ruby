# frozen_string_literal: true

module Amadeus
  module Namespaces
    class Travel
      # A namespaced client for the
      # +/v2/travel/trip_parser_jobs+ endpoints
      #
      # Access via the +Amadeus::Client+ object
      #
      #   amadeus = Amadeus::Client.new
      #   amadeus.travel.trip_parser_jobs
      #
      class TripParserJobs < Amadeus::Client::Decorator
        # Send the content of your booking confirmation to be parsed
        #
        # @option booking_confirmation [String] :booking_confirmation Base64 content of
        #   the booking confirmation could be an email, html eml or pdf
        # @return [Amadeus::Response] a parsed response
        # @raise [Amadeus::Base] an exception if the call failed
        #   amadeus.travel.trip_parser_jobs.post(booking_confirmation)
        #
        def post(booking_confirmation = {})
          body = "{
            \"data\":
              {
                \"type\": \"trip-parser-job\",
                \"content\": \"#{booking_confirmation}\"
              }
            }"
          client.post('/v2/travel/trip-parser-jobs', body)
        end
      end
    end
  end
end

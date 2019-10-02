# frozen_string_literal: true

module Amadeus
  module Namespaces
    class Travel
      class TripParserJob
        # A namespaced client for the
        # +/v2/travel/trip_parser_jobs+ endpoints
        #
        # Access via the +Amadeus::Client+ object
        #
        #   amadeus = Amadeus::Client.new
        #   amadeus.travel.trip_parser_job(:job_id).result
        #
        class Result < Amadeus::Client::Decorator
          # the Trip Parser Job ID
          # attr_reader :job_id

          # Initialize this namespaced client with an
          # {Amadeus::Client} instance and a Trip Parser Job ID
          #
          # @param [Amadeus::Client] client
          # @param [String] job_id
          #
          def initialize(client)
            super(client)
          end

          # Returns the parsing status
          #  and the link to the result in case of successful parsing.
          #
          # @return [Amadeus::Response] a parsed response
          # @raise [Amadeus::Base] an exception if the call failed
          # @example Get the details of the trip parser job JKKSJNMSKHJ
          #   amadeus.travel.trip_parser_job('JKKSJNMSKHJ').result.get
          #
          def get(params = {})
            client.get("/v2/travel/trip-parser-jobs/#{@job_id}/result", params)
          end
        end
      end
    end
  end
end

# frozen_string_literal: true

module Amadeus
  module Namespaces
    class Travel
      # A namespaced client for the
      # +/v2/travel/trip_parser_job/:job_id+ endpoints
      #
      # Access via the +Amadeus::Client+ object
      #
      #   amadeus = Amadeus::Client.new
      #   amadeus.travel.trip_parser_job('JKKSJNMSKHJ')
      #
      class TripParserJob < Amadeus::Client::Decorator
        # the Trip Parser Job ID
        attr_reader :job_id

        # Initialize this namespaced client with an
        # {Amadeus::Client} instance and a Trip Parser Job ID
        #
        # @param [Amadeus::Client] client
        # @param [String] job_id
        #
        def initialize(client, job_id = nil)
          super(client)
          @job_id = job_id
        end

        # The namespace for the travel Trip Parser APIs:
        #
        # @return [Amadeus::Namespaces::Travel::TripParserJob::Result]
        # @example
        #   amadeus.travel.travel.trip_parser_job(:job_id).result
        #
        def result
          Amadeus::Namespaces::Travel::TripParserJob::Result.new(client)
        end

        # Returns the parsing status
        #  and the link to the result in case of successful parsing.
        #
        # @return [Amadeus::Response] a parsed response
        # @raise [Amadeus::Base] an exception if the call failed
        # @example Get the details of the trip parser job JKKSJNMSKHJ
        #   amadeus.travel.trip_parser_job('JKKSJNMSKHJ').get
        #
        def get(params = {})
          client.get("/v2/travel/trip-parser-jobs/#{@job_id}", params)
        end
      end
    end
  end
end

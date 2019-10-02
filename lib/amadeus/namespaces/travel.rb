# frozen_string_literal: true

module Amadeus
  module Namespaces
    # A namespaced client for the
    # +/v1/travel+ endpoints
    #
    # Access via the +Amadeus::Client+ object
    #
    #   amadeus = Amadeus::Client.new
    #   amadeus.travel
    #
    class Travel < Amadeus::Client::Decorator
      # The namespace for the travel Analytics APIs:
      #
      # @return [Amadeus::Namespaces::Travel::Analytics]
      # @example
      #   amadeus.travel.analytics.air_traffic
      #   amadeus.travel.analytics.fare_searches
      #
      def analytics
        Amadeus::Namespaces::Travel::Analytics.new(client)
      end

      # The namespace for the travel Trip Parser APIs:
      #
      # @return [Amadeus::Namespaces::Travel::TripParserJobs]
      # @example
      #   amadeus.travel.travel.trip_parser_jobs
      #
      def trip_parser_jobs
        Amadeus::Namespaces::Travel::TripParserJobs.new(client)
      end

      # The namespace for the Trip Parser APIs - retreiving the status of a trip parser job
      #
      # @param [String] job_id The ID of the trip parser job
      # @return [Amadeus::Namespaces::Travel::TripParserJob]
      # @example
      #   amadeus.travel.trip_parser_job('JKKSJNMSKHJ')
      #
      def trip_parser_job(job_id)
        Amadeus::Namespaces::Travel::TripParserJob.new(client, job_id)
      end
    end
  end
end

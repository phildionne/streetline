require 'faraday'
require 'faraday_middleware'

module Streetline
  module Connection

    # Instantiate a Faraday::Connection
    # @private
    private

    # Returns a Faraday::Connection object
    #
    # @param options [Hash]
    # @return [Faraday::Connection]
    def connection(options = {})
      options = options.reverse_merge(url: Streetline.api_endpoint)

      connection = Faraday.new(options) do |c|
        c.request :json

        c.response :json, content_type: /\bjson$/

        # raise exceptions on 40x, 50x responses
        c.use Faraday::Response::RaiseError

        c.adapter Faraday.default_adapter
      end

      connection.headers[:user_agent] = Streetline.user_agent

      connection
    end
  end
end

module Streetline
  module Request

    # Performs a HTTP Get request
    #
    # @param path [String]
    # @param params [Hash]
    def get(path, params = {})
      request(:get, path, params)
    end


    private

    # Returns a Faraday::Response object
    #
    # @param method [Symbol]
    # @param path [String]
    # @param params [Hash]
    # @return [Faraday::Response]
    def request(method, path, params = {})
      raise ArgumentError, ("Please configure Streetline.api_token first") unless api_token.present?

      params = params.reverse_merge('Key' => api_token)

      response = connection.send(method) do |request|
        request.url(path, params)
      end

      response.body
    end
  end
end

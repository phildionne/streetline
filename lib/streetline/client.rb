require 'streetline/connection'
require 'streetline/request'
require 'streetline/api/parking'

module Streetline
  class Client
    attr_accessor *Configuration::VALID_OPTIONS_KEYS

    # @param options [Hash]
    def initialize(options = {})
      options = Streetline.options.merge(options)
      Configuration::VALID_OPTIONS_KEYS.each do |key|
        send("#{key}=", options[key])
      end
    end

    include Streetline::Connection
    include Streetline::Request
    include Streetline::API::Parking
  end
end

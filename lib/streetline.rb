require 'active_support/core_ext'

require 'streetline/configuration'
require 'streetline/client'

module Streetline
  extend Configuration

  # Alias for Streetline::Client.new
  #
  # @return [Streetline::Client]
  def new(options = {})
    Streetline::Client.new(options)
  end
  module_function :new
end

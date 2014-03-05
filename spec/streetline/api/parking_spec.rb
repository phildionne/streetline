require 'spec_helper'

describe Streetline::API::Parking do

  describe :InstanceMethods do
    let(:client) { Streetline::Client.new(api_token: ENV['STREETLINE_API_TOKEN']) }

    describe :destinations do
      it { expect(client.destinations).to be_a(Array) }
    end
  end
end

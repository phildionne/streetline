require 'spec_helper'

describe Streetline::Client do

  describe :InstanceMethods do
    let(:client) { Streetline::Client.new(api_token: ENV['STREETLINE_API_TOKEN']) }

    describe :connection do
      it { expect(client.send(:connection)).to be_a(Faraday::Connection) }
    end

    describe :request do
      pending
    end
  end
end

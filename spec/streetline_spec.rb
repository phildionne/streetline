require 'spec_helper'

describe Streetline do

  describe :new do
    it { expect(Streetline.new).to be_a(Streetline::Client) }
  end
end

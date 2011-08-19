require 'spec_helper'

describe Gauges::Rails do
  it "should be a valid module" do
    Gauges::Rails.should be_a(Module)
  end

  it 'should include a Helper module' do
    Gauges::Rails::Helper.should be_a(Module)
  end
end

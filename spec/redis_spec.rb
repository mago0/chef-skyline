require 'spec_helper'

describe 'skyline::redis' do
  let(:chef_run) do
    ChefSpec::Runner.new.converge(described_recipe)
  end
end

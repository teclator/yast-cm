require_relative "../../spec_helper"
require "scm/cfa/puppet"

describe Yast::SCM::CFA::Puppet do
  subject(:config) { Yast::SCM::CFA::Puppet.new }

  before do
    stub_const("Yast::SCM::CFA::Puppet::PATH", "spec/fixtures/puppet/puppet.conf")
    config.load
  end

  describe "#server" do
    it "returns server name" do
      expect(config.server).to eq("master-of-puppets")
    end
  end

  describe "#server" do
    it "sets server name" do
      config.server = "master"
      expect(config.server).to eq("master")
    end
  end
end
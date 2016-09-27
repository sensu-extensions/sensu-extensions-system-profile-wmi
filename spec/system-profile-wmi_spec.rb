require File.join(File.dirname(__FILE__), "helpers")
require "sensu/extensions/system-profile-wmi"

describe "Sensu::Extension::SystemProfileWmi" do
  include Helpers

  before do
    @extension = Sensu::Extension::SystemProfileWMI.new
  end

  it "can run" do
    @extension.safe_run(event_template) do |output, status|
      expect(status).to eq(0)
    end
  end
end

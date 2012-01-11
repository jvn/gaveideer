require 'spec_helper'

describe "Brugers" do
  describe "GET /brugers" do
    it "displays brugers" do
      Bruger.create!(:navn => "Mikkel")
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get brugers_path
      response.body.should include("Mikkel")
    end
  end
end

require "rails_helper"

RSpec.describe RestoransController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/restorans").to route_to("restorans#index")
    end

    it "routes to #new" do
      expect(:get => "/restorans/new").to route_to("restorans#new")
    end

    it "routes to #show" do
      expect(:get => "/restorans/1").to route_to("restorans#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/restorans/1/edit").to route_to("restorans#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/restorans").to route_to("restorans#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/restorans/1").to route_to("restorans#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/restorans/1").to route_to("restorans#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/restorans/1").to route_to("restorans#destroy", :id => "1")
    end

  end
end

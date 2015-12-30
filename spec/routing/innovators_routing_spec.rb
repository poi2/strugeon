require "rails_helper"

RSpec.describe InnovatorsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/innovators").to route_to("innovators#index")
    end

    it "routes to #new" do
      expect(:get => "/innovators/new").to route_to("innovators#new")
    end

    it "routes to #show" do
      expect(:get => "/innovators/1").to route_to("innovators#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/innovators/1/edit").to route_to("innovators#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/innovators").to route_to("innovators#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/innovators/1").to route_to("innovators#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/innovators/1").to route_to("innovators#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/innovators/1").to route_to("innovators#destroy", :id => "1")
    end

  end
end

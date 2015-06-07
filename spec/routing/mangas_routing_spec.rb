require "rails_helper"

RSpec.describe MangasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "api/mangas").to route_to("mangas#index")
    end

    it "routes to #show" do
      expect(:get => "api/mangas/1").to route_to("mangas#show", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "api/mangas").to route_to("mangas#create")
    end

    it "routes to #update" do
      expect(:put => "api/mangas/1").to route_to("mangas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "api/mangas/1").to route_to("mangas#destroy", :id => "1")
    end

  end
end

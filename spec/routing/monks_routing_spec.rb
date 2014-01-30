require "spec_helper"

describe MonksController do
  describe "routing" do

    it "routes to #index" do
      get("/monks").should route_to("monks#index")
    end

    it "routes to #new" do
      get("/monks/new").should route_to("monks#new")
    end

    it "routes to #show" do
      get("/monks/1").should route_to("monks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/monks/1/edit").should route_to("monks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/monks").should route_to("monks#create")
    end

    it "routes to #update" do
      put("/monks/1").should route_to("monks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/monks/1").should route_to("monks#destroy", :id => "1")
    end

  end
end

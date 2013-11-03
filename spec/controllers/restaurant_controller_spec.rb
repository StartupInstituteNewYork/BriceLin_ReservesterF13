require 'spec_helper'

describe RestaurantsController do
	describe "GET #index" do
		it "responds successfully with an HTTP 200 status code" do
			get :index
			expect(response).to be_success
			expect(response.status).to eq(200)
			expect(response).to render_template("index")
		end
	end

	describe "GET #new" do
		it "responds successfully with an HTTP 200 status code" do
			get :new
			expect(response).to be_success
			expect(response.status).to eq(200)
			expect(response).to render_template("new")
		end
	end
end
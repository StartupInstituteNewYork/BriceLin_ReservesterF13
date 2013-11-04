require 'spec_helper'

describe RestaurantsController do
	describe "GET #index" do
		it "populates an array of restaurants"
		it "renders the :index view" do
			get :index
			expect(response).to render_template('index')
		end
	end

	describe "GET #new" do
		it "assigns a new Restaurant to @restaurant"
		it "renders the :new template" do
			get :new
			expect(response).to render_template('new')
		end
	end

	describe "GET #show" do
		context "with valid Restaurant id" do
			it "assigns the requested restaurant to @restaurant"
			it "renders the :show template" do
				restaurant = FactoryGirl.create(:restaurant)
				get :show, id: restaurant.id
				expect(response).to render_template('show')
			end
		end

		context "with invalid Restaurant id" do
			it "doesn't assign requested restaurant to @restaurant"
			it "renders the :index view"
		end
	end

	describe "POST #create" do
		context "with valid attributes" do
			it "saves the new restaurant in the database"
			it "redirects to the home page"
		end

		context "with invalid attributes" do
			it "does not save the new restaurant in the database"
			it "re-renders the :new template"
		end
	end

	describe "GET #edit" do
		it "assigns requested restaurant to @restaurant"
		it "renders the :edit template" do
			restaurant = FactoryGirl.create(:restaurant)
			get :edit, id: restaurant.id
			expect(response).to render_template('edit')
		end
	end
end
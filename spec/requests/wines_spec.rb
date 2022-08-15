require 'rails_helper'

RSpec.describe "Wines", type: :request do
  let(:user) { create :user }
  before(:each) { sign_in user }

  describe "GET index" do
    it "returns a successful response" do
      get wines_path
      expect(response).to render_template(:index)
    end

    it "assigns @wines" do
      wine = Wine.create(name: "Santa Emily", wineyard: "Emiliana", year: 2018, grade: 98)
      get wines_path
      expect(assigns(:wines)).to eq([wine])
    end
  end

  describe "GET show" do
      it "renders the show template" do
      get wine_path
      expect(response).to render_template(:show)
      end
  end
end
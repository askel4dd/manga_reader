require 'rails_helper'

RSpec.describe MangasController, type: :controller do

  let(:valid_attributes) {
    { title: "Gantz",
      author_list: "Hiroya Oku",
      genre_list: "Horror" }
  }

  let(:invalid_attributes) {
    { title: " " }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MangasController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all mangas as @mangas" do
      manga = Manga.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:mangas)).to eq([manga])
    end

    it "assigns search results mangas as @mangas" do
      manga = Manga.create! valid_attributes
      get :index, { params: { query: "Gantz" } }, valid_session
      expect(assigns(:mangas)).to eq([manga])
    end

    it "assigns genre tagged mangas as @mangas" do
      manga = Manga.create! valid_attributes
      get :index, { params: { tag: "Horror" } }, valid_session
      expect(assigns(:mangas)).to eq([manga])
    end

    it "assigns author tagged mangas as @mangas" do
      manga = Manga.create! valid_attributes
      get :index, { params: { tag: "Hiroya Oku" } }, valid_session
      expect(assigns(:mangas)).to eq([manga])
    end
  end

  describe "GET #show" do
    it "assigns the requested manga as @manga" do
      manga = Manga.create! valid_attributes
      get :show, {:id => manga.to_param}, valid_session
      expect(assigns(:manga)).to eq(manga)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Manga" do
        expect {
          post :create, {:manga => valid_attributes}, valid_session
        }.to change(Manga, :count).by(1)
      end

      it "assigns a newly created manga as @manga" do
        post :create, {:manga => valid_attributes}, valid_session
        expect(assigns(:manga)).to be_a(Manga)
        expect(assigns(:manga)).to be_persisted
      end

      it "set http status to the created" do
        post :create, {:manga => valid_attributes}, valid_session
        expect(response).to have_http_status(:created)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved manga as @manga" do
        post :create, {:manga => invalid_attributes}, valid_session
        expect(assigns(:manga)).to be_a_new(Manga)
      end

      it "set http status to unprocessable entity" do
        post :create, {:manga => invalid_attributes}, valid_session
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested manga" do
        manga = Manga.create! valid_attributes
        put :update, {:id => manga.to_param, :manga => { title: "Updated Title"}}, valid_session
        manga.reload
        expect(manga.title).to eq("Updated Title")
      end

      it "assigns the requested manga as @manga" do
        manga = Manga.create! valid_attributes
        put :update, {:id => manga.to_param, :manga => valid_attributes}, valid_session
        expect(assigns(:manga)).to eq(manga)
      end
    end

    context "with invalid params" do
      it "assigns the manga as @manga" do
        manga = Manga.create! valid_attributes
        put :update, {:id => manga.to_param, :manga => invalid_attributes}, valid_session
        expect(assigns(:manga)).to eq(manga)
      end

      it "set http status as unprocessable entity" do
        manga = Manga.create! valid_attributes
        put :update, {:id => manga.to_param, :manga => invalid_attributes}, valid_session
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested manga" do
      manga = Manga.create! valid_attributes
      expect {
        delete :destroy, {:id => manga.to_param}, valid_session
      }.to change(Manga, :count).by(-1)
    end
  end

end

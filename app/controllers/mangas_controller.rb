class MangasController < ApplicationController
  before_action :set_manga, only: [:show, :update, :destroy]

  # GET /mangas
  # GET /mangas.json
  def index
    @mangas = Manga.all

    render json: @mangas
  end

  # GET /mangas/1
  # GET /mangas/1.json
  def show
    render json: @manga
  end

  # POST /mangas
  # POST /mangas.json
  def create
    @manga = Manga.new(manga_params)

    if @manga.save
      render json: @manga, status: :created, location: @manga
    else
      render json: @manga.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mangas/1
  # PATCH/PUT /mangas/1.json
  def update
    @manga = Manga.find(params[:id])

    if @manga.update(manga_params)
      head :no_content
    else
      render json: @manga.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mangas/1
  # DELETE /mangas/1.json
  def destroy
    @manga.destroy

    head :no_content
  end

  private

    def set_manga
      @manga = Manga.find(params[:id])
    end

    def manga_params
      params.require(:manga).permit(:title, :genre, :author, :chapters)
    end
end

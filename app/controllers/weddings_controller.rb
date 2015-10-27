class WeddingsController < ApplicationController
  before_action :set_wedding, only: [:show, :edit, :update, :destroy]

  # GET /weddings
  def index
    @weddings = Wedding.all
  end

  # GET /weddings/1
  def show
  end

  # GET /weddings/new
  def new
    @wedding = Wedding.new
  end

  # GET /weddings/1/edit
  def edit
  end

  def load_album_photos
    @wedding_photos = Wedding.all
    respond_to do |format|
      format.js
    end
  end

  # POST /weddings
  def create
    @wedding = Wedding.new(wedding_params)

    if @wedding.save
      @budget = Budget.new wedding_id: @wedding.id
      @budget.save
      redirect_to @wedding, notice: 'Wedding was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /weddings/1
  def update
    if @wedding.update(wedding_params)
      redirect_to @wedding, notice: 'Wedding was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /weddings/1
  def destroy
    @wedding.destroy
    redirect_to weddings_url, notice: 'Wedding was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wedding
      @wedding = Wedding.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wedding_params
      params[:wedding].permit :groom_first_name, :groom_last_name, :bride_first_name, :bride_last_name, :location, :wedding_date, :guests
    end
end

class UploadsController < ApplicationController
  before_action :set_upload, only: [:show, :edit, :update, :destroy]

  # GET /uploads
  def index
    @uploads = Upload.all
  end

  # GET /uploads/1
  def show
  end

  # GET /uploads/new
  def new
    @wedding = Wedding.find params[:id]
    @upload = Upload.new
  end

  # GET /uploads/1/edit
  def edit
  end

  # POST /uploads
  def create
    @current_user = current_user
    @wedding = @current_user.weddings.first
    @wedding_photo = @wedding.wedding_photos.new upload_params

    if @wedding_photo.save
      # send success header
      render json: { message: "success", fileID: @wedding_photo.id }, :status => 200
    else
      #  you need to send an error header, otherwise Dropzone
      #  will not interpret the response as an error:
      render json: { error: @wedding_photo.errors.full_messages.join(',')}, :status => 400
    end
  end

  # PATCH/PUT /uploads/1
  def update
    if @upload.update(upload_params)
      redirect_to @upload, notice: 'Upload was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /uploads/1
  def destroy
    if @upload.destroy
      render json: { message: 'File deleted from server' }
    else
      render json: { message: @upload.errors.full_messages.join(',') }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upload
      @upload = WeddingPhoto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def upload_params
      params[:upload].permit :image
    end
end

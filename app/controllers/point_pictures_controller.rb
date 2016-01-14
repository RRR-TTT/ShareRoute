class PointPicturesController < ApplicationController
  before_action :set_point_picture, only: [:show, :edit, :update, :destroy]

  # GET /point_pictures
  # GET /point_pictures.json
  def index
    @point_pictures = PointPicture.all
  end

  # GET /point_pictures/1
  # GET /point_pictures/1.json
  def show
  end

  # GET /point_pictures/new
  def new
    @point_picture = PointPicture.new
  end

  # GET /point_pictures/1/edit
  def edit
  end

  # POST /point_pictures
  # POST /point_pictures.json
  def create
    @point_picture = PointPicture.new(point_picture_params)

    respond_to do |format|
      if @point_picture.save
        format.html { redirect_to @point_picture, notice: 'Point picture was successfully created.' }
        format.json { render :show, status: :created, location: @point_picture }
      else
        format.html { render :new }
        format.json { render json: @point_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /point_pictures/1
  # PATCH/PUT /point_pictures/1.json
  def update
    respond_to do |format|
      if @point_picture.update(point_picture_params)
        format.html { redirect_to @point_picture, notice: 'Point picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @point_picture }
      else
        format.html { render :edit }
        format.json { render json: @point_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /point_pictures/1
  # DELETE /point_pictures/1.json
  def destroy
    @point_picture.destroy
    respond_to do |format|
      format.html { redirect_to point_pictures_url, notice: 'Point picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_point_picture
      @point_picture = PointPicture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def point_picture_params
      params.require(:point_picture).permit(:PointPictureImage, :PostingUser_id)
    end
end

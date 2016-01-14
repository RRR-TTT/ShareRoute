class TransitpointsController < ApplicationController
  before_action :set_transitpoint, only: [:show, :edit, :update, :destroy]

  # GET /transitpoints
  # GET /transitpoints.json
  def index
    @transitpoints = Transitpoint.all
  end

  # GET /transitpoints/1
  # GET /transitpoints/1.json
  def show
  end

  # GET /transitpoints/new
  def new
    @transitpoint = Transitpoint.new
  end

  # GET /transitpoints/1/edit
  def edit
  end

  # POST /transitpoints
  # POST /transitpoints.json
  def create
    @transitpoint = Transitpoint.new(transitpoint_params)

    respond_to do |format|
      if @transitpoint.save
        format.html { redirect_to @transitpoint, notice: 'Transitpoint was successfully created.' }
        format.json { render :show, status: :created, location: @transitpoint }
      else
        format.html { render :new }
        format.json { render json: @transitpoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transitpoints/1
  # PATCH/PUT /transitpoints/1.json
  def update
    respond_to do |format|
      if @transitpoint.update(transitpoint_params)
        format.html { redirect_to @transitpoint, notice: 'Transitpoint was successfully updated.' }
        format.json { render :show, status: :ok, location: @transitpoint }
      else
        format.html { render :edit }
        format.json { render json: @transitpoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transitpoints/1
  # DELETE /transitpoints/1.json
  def destroy
    @transitpoint.destroy
    respond_to do |format|
      format.html { redirect_to transitpoints_url, notice: 'Transitpoint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transitpoint
      @transitpoint = Transitpoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transitpoint_params
      params.require(:transitpoint).permit(:TransitpointName, :TransitpointSpendTime)
    end
end

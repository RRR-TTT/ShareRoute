class NextpointsController < ApplicationController
  before_action :set_nextpoint, only: [:show, :edit, :update, :destroy]

  # GET /nextpoints
  # GET /nextpoints.json
  def index
    @nextpoints = Nextpoint.all
  end

  # GET /nextpoints/1
  # GET /nextpoints/1.json
  def show
  end

  # GET /nextpoints/new
  def new
    @nextpoint = Nextpoint.new
  end

  # GET /nextpoints/1/edit
  def edit
  end

  # POST /nextpoints
  # POST /nextpoints.json
  def create
    @nextpoint = Nextpoint.new(nextpoint_params)

    respond_to do |format|
      if @nextpoint.save
        format.html { redirect_to @nextpoint, notice: 'Nextpoint was successfully created.' }
        format.json { render :show, status: :created, location: @nextpoint }
      else
        format.html { render :new }
        format.json { render json: @nextpoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nextpoints/1
  # PATCH/PUT /nextpoints/1.json
  def update
    respond_to do |format|
      if @nextpoint.update(nextpoint_params)
        format.html { redirect_to @nextpoint, notice: 'Nextpoint was successfully updated.' }
        format.json { render :show, status: :ok, location: @nextpoint }
      else
        format.html { render :edit }
        format.json { render json: @nextpoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nextpoints/1
  # DELETE /nextpoints/1.json
  def destroy
    @nextpoint.destroy
    respond_to do |format|
      format.html { redirect_to nextpoints_url, notice: 'Nextpoint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nextpoint
      @nextpoint = Nextpoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nextpoint_params
      params.require(:nextpoint).permit(:NextpointName, :NextpointRequiredTime, :NextpointTransportation)
    end
end

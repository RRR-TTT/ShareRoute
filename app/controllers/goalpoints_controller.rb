class GoalpointsController < ApplicationController
  before_action :set_goalpoint, only: [:show, :edit, :update, :destroy]

  # GET /goalpoints
  # GET /goalpoints.json
  def index
    @goalpoints = Goalpoint.all
  end

  # GET /goalpoints/1
  # GET /goalpoints/1.json
  def show
  end

  # GET /goalpoints/new
  def new
    @goalpoint = Goalpoint.new
  end

  # GET /goalpoints/1/edit
  def edit
  end

  # POST /goalpoints
  # POST /goalpoints.json
  def create
    @goalpoint = Goalpoint.new(goalpoint_params)

    respond_to do |format|
      if @goalpoint.save
        format.html { redirect_to @goalpoint, notice: 'Goalpoint was successfully created.' }
        format.json { render :show, status: :created, location: @goalpoint }
      else
        format.html { render :new }
        format.json { render json: @goalpoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goalpoints/1
  # PATCH/PUT /goalpoints/1.json
  def update
    respond_to do |format|
      if @goalpoint.update(goalpoint_params)
        format.html { redirect_to @goalpoint, notice: 'Goalpoint was successfully updated.' }
        format.json { render :show, status: :ok, location: @goalpoint }
      else
        format.html { render :edit }
        format.json { render json: @goalpoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goalpoints/1
  # DELETE /goalpoints/1.json
  def destroy
    @goalpoint.destroy
    respond_to do |format|
      format.html { redirect_to goalpoints_url, notice: 'Goalpoint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goalpoint
      @goalpoint = Goalpoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goalpoint_params
      params.require(:goalpoint).permit(:GoalpointName, :GoalpointSpendTime)
    end
end

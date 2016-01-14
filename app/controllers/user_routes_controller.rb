class UserRoutesController < ApplicationController
  before_action :set_user_route, only: [:show, :edit, :update, :destroy]

  # GET /user_routes
  # GET /user_routes.json
  def index
    @user_routes = UserRoute.all
  end

  # GET /user_routes/1
  # GET /user_routes/1.json
  def show
  end

  # GET /user_routes/new
  def new
    @user_route = UserRoute.new
  end

  # GET /user_routes/1/edit
  def edit
  end

  # POST /user_routes
  # POST /user_routes.json
  def create
    @user_route = UserRoute.new(user_route_params)

    respond_to do |format|
      if @user_route.save
        format.html { redirect_to @user_route, notice: 'User route was successfully created.' }
        format.json { render :show, status: :created, location: @user_route }
      else
        format.html { render :new }
        format.json { render json: @user_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_routes/1
  # PATCH/PUT /user_routes/1.json
  def update
    respond_to do |format|
      if @user_route.update(user_route_params)
        format.html { redirect_to @user_route, notice: 'User route was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_route }
      else
        format.html { render :edit }
        format.json { render json: @user_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_routes/1
  # DELETE /user_routes/1.json
  def destroy
    @user_route.destroy
    respond_to do |format|
      format.html { redirect_to user_routes_url, notice: 'User route was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_route
      @user_route = UserRoute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_route_params
      params.require(:user_route).permit(:total_time, :UserRouteName)
    end
end

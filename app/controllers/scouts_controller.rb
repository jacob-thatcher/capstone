class ScoutsController < ApplicationController
  before_action :set_scout, only: [:show, :edit, :update, :destroy]

  # GET /scouts
  def index
    @scouts = Scout.all
  end

  # GET /scouts/1
  def show
  end

  # GET /scouts/new
  def new
    @scout = Scout.new
  end

  # GET /scouts/1/edit
  def edit
  end

  # POST /scouts
  def create
    @scout = Scout.new(scout_params)

    if @scout.save
      redirect_to @scout, notice: 'Scout was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /scouts/1
  def update
    if @scout.update(scout_params)
      redirect_to @scout, notice: 'Scout was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /scouts/1
  def destroy
    @scout.destroy
    redirect_to scouts_url, notice: 'Scout was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scout
      @scout = Scout.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def scout_params
      params.require(:scout).permit(:first_name, :last_name, :troop, :email, :password, :password_confirmation)
    end
end

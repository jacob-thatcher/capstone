class AdvisorsController < ApplicationController
  before_action :set_advisor, only: [:show, :edit, :update, :destroy]

  # GET /advisors
  def index
    @advisors = Advisor.all
  end

  # GET /advisors/1
  def show
  end

  # GET /advisors/new
  def new
    @advisor = Advisor.new
  end

  # GET /advisors/1/edit
  def edit
  end

  # POST /advisors
  def create
    @advisor = Advisor.new(advisor_params)

    if @advisor.save
      redirect_to @advisor, notice: 'Advisor was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /advisors/1
  def update
    if @advisor.update(advisor_params)
      redirect_to @advisor, notice: 'Advisor was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /advisors/1
  def destroy
    @advisor.destroy
    redirect_to advisors_url, notice: 'Advisor was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advisor
      @advisor = Advisor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def advisor_params
      params.require(:advisor).permit(:first_name, :last_name, :troop, :email, :password, :password_confirmation)
    end
end

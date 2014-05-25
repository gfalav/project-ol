class UserHitosController < ApplicationController
  before_action :set_user_hito, only: [:show, :edit, :update, :destroy]

  # GET /user_hitos
  # GET /user_hitos.json
  def index
    @user_hitos = UserHito.all
  end

  # GET /user_hitos/1
  # GET /user_hitos/1.json
  def show
  end

  # GET /user_hitos/new
  def new
    @user_hito = UserHito.new
  end

  # GET /user_hitos/1/edit
  def edit
  end

  # POST /user_hitos
  # POST /user_hitos.json
  def create
    @user_hito = UserHito.new(user_hito_params)

    respond_to do |format|
      if @user_hito.save
        format.html { redirect_to @user_hito, notice: 'User hito was successfully created.' }
        format.json { render :show, status: :created, location: @user_hito }
      else
        format.html { render :new }
        format.json { render json: @user_hito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_hitos/1
  # PATCH/PUT /user_hitos/1.json
  def update
    respond_to do |format|
      if @user_hito.update(user_hito_params)
        format.html { redirect_to @user_hito, notice: 'User hito was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_hito }
      else
        format.html { render :edit }
        format.json { render json: @user_hito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_hitos/1
  # DELETE /user_hitos/1.json
  def destroy
    @user_hito.destroy
    respond_to do |format|
      format.html { redirect_to user_hitos_url, notice: 'User hito was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_hito
      @user_hito = UserHito.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_hito_params
      params.require(:user_hito).permit(:user_id, :hito_id)
    end
end

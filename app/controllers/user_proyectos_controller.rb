class UserProyectosController < ApplicationController
  before_action :set_user_proyecto, only: [:show, :edit, :update, :destroy]

  # GET /user_proyectos
  # GET /user_proyectos.json
  def index
    @user_proyectos = UserProyecto.all
  end

  # GET /user_proyectos/1
  # GET /user_proyectos/1.json
  def show
  end

  # GET /user_proyectos/new
  def new
    @user_proyecto = UserProyecto.new
  end

  # GET /user_proyectos/1/edit
  def edit
  end

  # POST /user_proyectos
  # POST /user_proyectos.json
  def create
    @user_proyecto = UserProyecto.new(user_proyecto_params)

    respond_to do |format|
      if @user_proyecto.save
        format.html { redirect_to @user_proyecto, notice: 'User proyecto was successfully created.' }
        format.json { render :show, status: :created, location: @user_proyecto }
      else
        format.html { render :new }
        format.json { render json: @user_proyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_proyectos/1
  # PATCH/PUT /user_proyectos/1.json
  def update
    respond_to do |format|
      if @user_proyecto.update(user_proyecto_params)
        format.html { redirect_to @user_proyecto, notice: 'User proyecto was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_proyecto }
      else
        format.html { render :edit }
        format.json { render json: @user_proyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_proyectos/1
  # DELETE /user_proyectos/1.json
  def destroy
    @user_proyecto.destroy
    respond_to do |format|
      format.html { redirect_to user_proyectos_url, notice: 'User proyecto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_proyecto
      @user_proyecto = UserProyecto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_proyecto_params
      params.require(:user_proyecto).permit(:user_id, :proyecto_id)
    end
end

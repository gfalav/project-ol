class UserTareasController < ApplicationController
  before_action :set_user_tarea, only: [:show, :edit, :update, :destroy]

  # GET /user_tareas
  # GET /user_tareas.json
  def index
    @user_tareas = UserTarea.all
  end

  # GET /user_tareas/1
  # GET /user_tareas/1.json
  def show
  end

  # GET /user_tareas/new
  def new
    @user_tarea = UserTarea.new
  end

  # GET /user_tareas/1/edit
  def edit
  end

  # POST /user_tareas
  # POST /user_tareas.json
  def create
    @user_tarea = UserTarea.new(user_tarea_params)

    respond_to do |format|
      if @user_tarea.save
        format.html { redirect_to @user_tarea, notice: 'User tarea was successfully created.' }
        format.json { render :show, status: :created, location: @user_tarea }
      else
        format.html { render :new }
        format.json { render json: @user_tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_tareas/1
  # PATCH/PUT /user_tareas/1.json
  def update
    respond_to do |format|
      if @user_tarea.update(user_tarea_params)
        format.html { redirect_to @user_tarea, notice: 'User tarea was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_tarea }
      else
        format.html { render :edit }
        format.json { render json: @user_tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_tareas/1
  # DELETE /user_tareas/1.json
  def destroy
    @user_tarea.destroy
    respond_to do |format|
      format.html { redirect_to user_tareas_url, notice: 'User tarea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_tarea
      @user_tarea = UserTarea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_tarea_params
      params.require(:user_tarea).permit(:user_id, :tarea_id)
    end
end

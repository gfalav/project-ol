class ArchivoTareasController < ApplicationController
  before_action :set_archivo_tarea, only: [:show, :edit, :update, :destroy]

  # GET /archivo_tareas
  # GET /archivo_tareas.json
  def index
    @archivo_tareas = ArchivoTarea.all
  end

  # GET /archivo_tareas/1
  # GET /archivo_tareas/1.json
  def show
  end

  # GET /archivo_tareas/new
  def new
    @archivo_tarea = ArchivoTarea.new
  end

  # GET /archivo_tareas/1/edit
  def edit
  end

  # POST /archivo_tareas
  # POST /archivo_tareas.json
  def create
    @archivo_tarea = ArchivoTarea.new(archivo_tarea_params)

    respond_to do |format|
      if @archivo_tarea.save
        format.html { redirect_to @archivo_tarea, notice: 'Archivo tarea was successfully created.' }
        format.json { render :show, status: :created, location: @archivo_tarea }
      else
        format.html { render :new }
        format.json { render json: @archivo_tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /archivo_tareas/1
  # PATCH/PUT /archivo_tareas/1.json
  def update
    respond_to do |format|
      if @archivo_tarea.update(archivo_tarea_params)
        format.html { redirect_to @archivo_tarea, notice: 'Archivo tarea was successfully updated.' }
        format.json { render :show, status: :ok, location: @archivo_tarea }
      else
        format.html { render :edit }
        format.json { render json: @archivo_tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archivo_tareas/1
  # DELETE /archivo_tareas/1.json
  def destroy
    @archivo_tarea.destroy
    respond_to do |format|
      format.html { redirect_to archivo_tareas_url, notice: 'Archivo tarea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_archivo_tarea
      @archivo_tarea = ArchivoTarea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def archivo_tarea_params
      params.require(:archivo_tarea).permit(:archivo_id, :tarea_id)
    end
end

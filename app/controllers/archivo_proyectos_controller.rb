class ArchivoProyectosController < ApplicationController
  before_action :set_archivo_proyecto, only: [:show, :edit, :update, :destroy]

  # GET /archivo_proyectos
  # GET /archivo_proyectos.json
  def index
    @archivo_proyectos = ArchivoProyecto.all
  end

  # GET /archivo_proyectos/1
  # GET /archivo_proyectos/1.json
  def show
  end

  # GET /archivo_proyectos/new
  def new
    @archivo_proyecto = ArchivoProyecto.new
  end

  # GET /archivo_proyectos/1/edit
  def edit
  end

  # POST /archivo_proyectos
  # POST /archivo_proyectos.json
  def create
    @archivo_proyecto = ArchivoProyecto.new(archivo_proyecto_params)

    respond_to do |format|
      if @archivo_proyecto.save
        format.html { redirect_to @archivo_proyecto, notice: 'Archivo proyecto was successfully created.' }
        format.json { render :show, status: :created, location: @archivo_proyecto }
      else
        format.html { render :new }
        format.json { render json: @archivo_proyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /archivo_proyectos/1
  # PATCH/PUT /archivo_proyectos/1.json
  def update
    respond_to do |format|
      if @archivo_proyecto.update(archivo_proyecto_params)
        format.html { redirect_to @archivo_proyecto, notice: 'Archivo proyecto was successfully updated.' }
        format.json { render :show, status: :ok, location: @archivo_proyecto }
      else
        format.html { render :edit }
        format.json { render json: @archivo_proyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archivo_proyectos/1
  # DELETE /archivo_proyectos/1.json
  def destroy
    @archivo_proyecto.destroy
    respond_to do |format|
      format.html { redirect_to archivo_proyectos_url, notice: 'Archivo proyecto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_archivo_proyecto
      @archivo_proyecto = ArchivoProyecto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def archivo_proyecto_params
      params.require(:archivo_proyecto).permit(:archivo_id, :proyecto_id)
    end
end

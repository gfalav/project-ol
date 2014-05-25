class ArchivoListtareasController < ApplicationController
  before_action :set_archivo_listtarea, only: [:show, :edit, :update, :destroy]

  # GET /archivo_listtareas
  # GET /archivo_listtareas.json
  def index
    @archivo_listtareas = ArchivoListtarea.all
  end

  # GET /archivo_listtareas/1
  # GET /archivo_listtareas/1.json
  def show
  end

  # GET /archivo_listtareas/new
  def new
    @archivo_listtarea = ArchivoListtarea.new
  end

  # GET /archivo_listtareas/1/edit
  def edit
  end

  # POST /archivo_listtareas
  # POST /archivo_listtareas.json
  def create
    @archivo_listtarea = ArchivoListtarea.new(archivo_listtarea_params)

    respond_to do |format|
      if @archivo_listtarea.save
        format.html { redirect_to @archivo_listtarea, notice: 'Archivo listtarea was successfully created.' }
        format.json { render :show, status: :created, location: @archivo_listtarea }
      else
        format.html { render :new }
        format.json { render json: @archivo_listtarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /archivo_listtareas/1
  # PATCH/PUT /archivo_listtareas/1.json
  def update
    respond_to do |format|
      if @archivo_listtarea.update(archivo_listtarea_params)
        format.html { redirect_to @archivo_listtarea, notice: 'Archivo listtarea was successfully updated.' }
        format.json { render :show, status: :ok, location: @archivo_listtarea }
      else
        format.html { render :edit }
        format.json { render json: @archivo_listtarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archivo_listtareas/1
  # DELETE /archivo_listtareas/1.json
  def destroy
    @archivo_listtarea.destroy
    respond_to do |format|
      format.html { redirect_to archivo_listtareas_url, notice: 'Archivo listtarea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_archivo_listtarea
      @archivo_listtarea = ArchivoListtarea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def archivo_listtarea_params
      params.require(:archivo_listtarea).permit(:archivo_id, :listtarea_id)
    end
end

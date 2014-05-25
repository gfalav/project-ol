class ArchivoHitosController < ApplicationController
  before_action :set_archivo_hito, only: [:show, :edit, :update, :destroy]

  # GET /archivo_hitos
  # GET /archivo_hitos.json
  def index
    @archivo_hitos = ArchivoHito.all
  end

  # GET /archivo_hitos/1
  # GET /archivo_hitos/1.json
  def show
  end

  # GET /archivo_hitos/new
  def new
    @archivo_hito = ArchivoHito.new
  end

  # GET /archivo_hitos/1/edit
  def edit
  end

  # POST /archivo_hitos
  # POST /archivo_hitos.json
  def create
    @archivo_hito = ArchivoHito.new(archivo_hito_params)

    respond_to do |format|
      if @archivo_hito.save
        format.html { redirect_to @archivo_hito, notice: 'Archivo hito was successfully created.' }
        format.json { render :show, status: :created, location: @archivo_hito }
      else
        format.html { render :new }
        format.json { render json: @archivo_hito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /archivo_hitos/1
  # PATCH/PUT /archivo_hitos/1.json
  def update
    respond_to do |format|
      if @archivo_hito.update(archivo_hito_params)
        format.html { redirect_to @archivo_hito, notice: 'Archivo hito was successfully updated.' }
        format.json { render :show, status: :ok, location: @archivo_hito }
      else
        format.html { render :edit }
        format.json { render json: @archivo_hito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archivo_hitos/1
  # DELETE /archivo_hitos/1.json
  def destroy
    @archivo_hito.destroy
    respond_to do |format|
      format.html { redirect_to archivo_hitos_url, notice: 'Archivo hito was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_archivo_hito
      @archivo_hito = ArchivoHito.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def archivo_hito_params
      params.require(:archivo_hito).permit(:archivo_id, :hito_id)
    end
end

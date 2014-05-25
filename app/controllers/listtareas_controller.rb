class ListtareasController < ApplicationController
  before_action :set_listtarea, only: [:show, :edit, :update, :destroy]

  # GET /listtareas
  # GET /listtareas.json
  def index
    @listtareas = Listtarea.all
  end

  # GET /listtareas/1
  # GET /listtareas/1.json
  def show
  end

  # GET /listtareas/new
  def new
    @listtarea = Listtarea.new
  end

  # GET /listtareas/1/edit
  def edit
  end

  # POST /listtareas
  # POST /listtareas.json
  def create
    @listtarea = Listtarea.new(listtarea_params)

    respond_to do |format|
      if @listtarea.save
        format.html { redirect_to @listtarea, notice: 'Listtarea was successfully created.' }
        format.json { render :show, status: :created, location: @listtarea }
      else
        format.html { render :new }
        format.json { render json: @listtarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listtareas/1
  # PATCH/PUT /listtareas/1.json
  def update
    respond_to do |format|
      if @listtarea.update(listtarea_params)
        format.html { redirect_to @listtarea, notice: 'Listtarea was successfully updated.' }
        format.json { render :show, status: :ok, location: @listtarea }
      else
        format.html { render :edit }
        format.json { render json: @listtarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listtareas/1
  # DELETE /listtareas/1.json
  def destroy
    @listtarea.destroy
    respond_to do |format|
      format.html { redirect_to listtareas_url, notice: 'Listtarea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listtarea
      @listtarea = Listtarea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listtarea_params
      params.require(:listtarea).permit(:proyecto_id, :lista, :descripcion, :elista, :lider_id, :falta, :fvcto, :fuce, :fcierre)
    end
end

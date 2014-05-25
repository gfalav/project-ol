class UserListtareasController < ApplicationController
  before_action :set_user_listtarea, only: [:show, :edit, :update, :destroy]

  # GET /user_listtareas
  # GET /user_listtareas.json
  def index
    @user_listtareas = UserListtarea.all
  end

  # GET /user_listtareas/1
  # GET /user_listtareas/1.json
  def show
  end

  # GET /user_listtareas/new
  def new
    @user_listtarea = UserListtarea.new
  end

  # GET /user_listtareas/1/edit
  def edit
  end

  # POST /user_listtareas
  # POST /user_listtareas.json
  def create
    @user_listtarea = UserListtarea.new(user_listtarea_params)

    respond_to do |format|
      if @user_listtarea.save
        format.html { redirect_to @user_listtarea, notice: 'User listtarea was successfully created.' }
        format.json { render :show, status: :created, location: @user_listtarea }
      else
        format.html { render :new }
        format.json { render json: @user_listtarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_listtareas/1
  # PATCH/PUT /user_listtareas/1.json
  def update
    respond_to do |format|
      if @user_listtarea.update(user_listtarea_params)
        format.html { redirect_to @user_listtarea, notice: 'User listtarea was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_listtarea }
      else
        format.html { render :edit }
        format.json { render json: @user_listtarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_listtareas/1
  # DELETE /user_listtareas/1.json
  def destroy
    @user_listtarea.destroy
    respond_to do |format|
      format.html { redirect_to user_listtareas_url, notice: 'User listtarea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_listtarea
      @user_listtarea = UserListtarea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_listtarea_params
      params.require(:user_listtarea).permit(:user_id, :listtarea_id)
    end
end

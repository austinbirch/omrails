class ObjectionsController < ApplicationController

  before_filter :authenticate_user!, except: [:index]
  # before_action :set_objection, only: [:show, :edit, :update, :destroy]

  # GET /objections
  # GET /objections.json
  def index
		@user_objections = current_user.objections
		@team_objections = Objection.where.not(user_id: current_user.id)
  end

  # GET /objections/1
  # GET /objections/1.json
  def show
    @objection = current_user.objections.find(params[:id])
  end

  # GET /objections/new
  def new
    @objection = current_user.objections.new
  end

  # GET /objections/1/edit
  def edit
    @objection = current_user.objections.find(params[:id])
  end

  # POST /objections
  # POST /objections.json
  def create
    @objection = current_user.objections.new(objection_params)

    respond_to do |format|
      if @objection.save
        format.html { redirect_to @objection, notice: 'Objection was successfully created.' }
        format.json { render action: 'show', status: :created, location: @objection }
      else
        format.html { render action: 'new' }
        format.json { render json: @objection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /objections/1
  # PATCH/PUT /objections/1.json
  def update
    @objection = current_user.objections.find(params[:id])

    respond_to do |format|
      if @objection.update(objection_params)
        format.html { redirect_to @objection, notice: 'Objection was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @objection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /objections/1
  # DELETE /objections/1.json
  def destroy
    @objection = current_user.objections.find(params[:id])

    @objection.destroy
    respond_to do |format|
      format.html { redirect_to objections_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_objection
    #   @objection = Objection.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def objection_params
      params.require(:objection).permit(:title, :objection, :rebuttal, :tag)
    end
end

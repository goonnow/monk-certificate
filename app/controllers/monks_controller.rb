class MonksController < ApplicationController
  before_action :set_monk, only: [:show, :edit, :update, :destroy]

  # GET /monks
  # GET /monks.json
  def index
    @monks = Monk.all
  end

  # GET /monks/1
  # GET /monks/1.json
  def show
  end

  # GET /monks/new
  def new
    @monk = Monk.new
  end

  # GET /monks/1/edit
  def edit
  end

  # POST /monks
  # POST /monks.json
  def create
    @monk = Monk.new(monk_params)

    respond_to do |format|
      if @monk.save
        format.html { redirect_to '/', notice: 'Monk was successfully created.' }
        format.json { render action: 'show', status: :created, location: @monk }
      else
        format.html { render action: 'new' }
        format.json { render json: @monk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monks/1
  # PATCH/PUT /monks/1.json
  def update
    respond_to do |format|
      if @monk.update(monk_params)
        format.html { redirect_to '/', notice: 'Monk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @monk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monks/1
  # DELETE /monks/1.json
  def destroy
    @monk.destroy
    respond_to do |format|
      format.html { redirect_to monks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monk
      @monk = Monk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monk_params
      params.require(:monk).permit(:cert_no, :firstname, :surname, :monkname, :birthdate, :height, :skin, :ordained_time, :ordainer, :pair_monk_1, :pair_monk_2, :approval_name, :approval_position, :pic, :id_no)
    end
end

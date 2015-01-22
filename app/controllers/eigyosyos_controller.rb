class EigyosyosController < ApplicationController
  before_action :set_eigyosyo, only: [:show, :edit, :update, :destroy]

  # GET /eigyosyos
  # GET /eigyosyos.json
  def index
    @eigyosyos = Eigyosyo.all
  end

  # GET /eigyosyos/1
  # GET /eigyosyos/1.json
  def show
  end

  # GET /eigyosyos/new
  def new
    @eigyosyo = Eigyosyo.new
  end

  # GET /eigyosyos/1/edit
  def edit
  end

  # POST /eigyosyos
  # POST /eigyosyos.json
  def create
    @eigyosyo = Eigyosyo.new(eigyosyo_params)

    respond_to do |format|
      if @eigyosyo.save
        format.html { redirect_to @eigyosyo, notice: 'Eigyosyo was successfully created.' }
        format.json { render :show, status: :created, location: @eigyosyo }
      else
        format.html { render :new }
        format.json { render json: @eigyosyo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eigyosyos/1
  # PATCH/PUT /eigyosyos/1.json
  def update
    respond_to do |format|
      if @eigyosyo.update(eigyosyo_params)
        format.html { redirect_to @eigyosyo, notice: 'Eigyosyo was successfully updated.' }
        format.json { render :show, status: :ok, location: @eigyosyo }
      else
        format.html { render :edit }
        format.json { render json: @eigyosyo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eigyosyos/1
  # DELETE /eigyosyos/1.json
  def destroy
    @eigyosyo.destroy
    respond_to do |format|
      format.html { redirect_to eigyosyos_url, notice: 'Eigyosyo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eigyosyo
      @eigyosyo = Eigyosyo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eigyosyo_params
      params.require(:eigyosyo).permit(:kyoukaicode, :kyoukaimei)
    end
end

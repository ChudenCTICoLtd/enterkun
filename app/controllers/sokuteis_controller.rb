class SokuteisController < ApplicationController
  before_action :set_sokutei, only: [:show, :edit, :update, :destroy]

  # GET /sokuteis
  # GET /sokuteis.json
  def index
    @sokuteis = Sokutei.all
  end

  # GET /sokuteis/1
  # GET /sokuteis/1.json
  def show
  end

  # GET /sokuteis/new
  def new
    @sokutei = Sokutei.new
  end

  # GET /sokuteis/1/edit
  def edit
  end

  # POST /sokuteis
  # POST /sokuteis.json
  def create
    @sokutei = Sokutei.new(sokutei_params)

    respond_to do |format|
      if @sokutei.save
        format.html { redirect_to @sokutei, notice: 'Sokutei was successfully created.' }
        format.json { render :show, status: :created, location: @sokutei }
      else
        format.html { render :new }
        format.json { render json: @sokutei.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sokuteis/1
  # PATCH/PUT /sokuteis/1.json
  def update
    respond_to do |format|
      if @sokutei.update(sokutei_params)
        format.html { redirect_to @sokutei, notice: 'Sokutei was successfully updated.' }
        format.json { render :show, status: :ok, location: @sokutei }
      else
        format.html { render :edit }
        format.json { render json: @sokutei.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sokuteis/1
  # DELETE /sokuteis/1.json
  def destroy
    @sokutei.destroy
    respond_to do |format|
      format.html { redirect_to sokuteis_url, notice: 'Sokutei was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sokutei
      @sokutei = Sokutei.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sokutei_params
      params.require(:sokutei).permit(:kairo_su, :roueidenryu_ikkatsu, :zetsuenteikou_ikkatsu)
    end
end

class OkunaisController < ApplicationController
  before_action :set_okunai, only: [:show, :edit, :update, :destroy]

  # GET /okunais
  # GET /okunais.json
  def index
    @okunais = Okunai.all
  end

  # GET /okunais/1
  # GET /okunais/1.json
  def show
  end

  # GET /okunais/new
  def new
    @okunai = Okunai.new
  end

  # GET /okunais/1/edit
  def edit
  end

  # POST /okunais
  # POST /okunais.json
  def create
    @okunai = Okunai.new(okunai_params)

    respond_to do |format|
      if @okunai.save
        format.html { redirect_to @okunai, notice: 'Okunai was successfully created.' }
        format.json { render :show, status: :created, location: @okunai }
      else
        format.html { render :new }
        format.json { render json: @okunai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /okunais/1
  # PATCH/PUT /okunais/1.json
  def update
    respond_to do |format|
      if @okunai.update(okunai_params)
        format.html { redirect_to @okunai, notice: 'Okunai was successfully updated.' }
        format.json { render :show, status: :ok, location: @okunai }
      else
        format.html { render :edit }
        format.json { render json: @okunai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /okunais/1
  # DELETE /okunais/1.json
  def destroy
    @okunai.destroy
    respond_to do |format|
      format.html { redirect_to okunais_url, notice: 'Okunai was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_okunai
      @okunai = Okunai.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def okunai_params
      params.require(:okunai).permit(:jisshi_umu, :mijisshi_riyu, :bundenbanhason_umu, :juudenburosyutsu_umu)
    end
end

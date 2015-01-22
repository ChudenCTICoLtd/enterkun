class RiyuOkunaisController < ApplicationController
  before_action :set_riyu_okunai, only: [:show, :edit, :update, :destroy]

  # GET /riyu_okunais
  # GET /riyu_okunais.json
  def index
    @riyu_okunais = RiyuOkunai.all
  end

  # GET /riyu_okunais/1
  # GET /riyu_okunais/1.json
  def show
  end

  # GET /riyu_okunais/new
  def new
    @riyu_okunai = RiyuOkunai.new
  end

  # GET /riyu_okunais/1/edit
  def edit
  end

  # POST /riyu_okunais
  # POST /riyu_okunais.json
  def create
    @riyu_okunai = RiyuOkunai.new(riyu_okunai_params)

    respond_to do |format|
      if @riyu_okunai.save
        format.html { redirect_to @riyu_okunai, notice: 'Riyu okunai was successfully created.' }
        format.json { render :show, status: :created, location: @riyu_okunai }
      else
        format.html { render :new }
        format.json { render json: @riyu_okunai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /riyu_okunais/1
  # PATCH/PUT /riyu_okunais/1.json
  def update
    respond_to do |format|
      if @riyu_okunai.update(riyu_okunai_params)
        format.html { redirect_to @riyu_okunai, notice: 'Riyu okunai was successfully updated.' }
        format.json { render :show, status: :ok, location: @riyu_okunai }
      else
        format.html { render :edit }
        format.json { render json: @riyu_okunai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /riyu_okunais/1
  # DELETE /riyu_okunais/1.json
  def destroy
    @riyu_okunai.destroy
    respond_to do |format|
      format.html { redirect_to riyu_okunais_url, notice: 'Riyu okunai was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_riyu_okunai
      @riyu_okunai = RiyuOkunai.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def riyu_okunai_params
      params.require(:riyu_okunai).permit(:atai)
    end
end

class TenkenkekkasController < ApplicationController
  before_action :set_tenkenkekka, only: [:show, :edit, :update, :destroy]

  # GET /tenkenkekkas
  # GET /tenkenkekkas.json
  def index
    @tenkenkekkas = Tenkenkekka.all
  end

  # GET /tenkenkekkas/1
  # GET /tenkenkekkas/1.json
  def show
  end

  # GET /tenkenkekkas/new
  def new
    @tenkenkekka = Tenkenkekka.new
    @houmon = @tenkenkekka.build_houmon
  end

  # GET /tenkenkekkas/1/edit
  def edit
  end

  # POST /tenkenkekkas
  # POST /tenkenkekkas.json
  def create
    @tenkenkekka = Tenkenkekka.new(tenkenkekka_params)

    respond_to do |format|
      if @tenkenkekka.save
        format.html { redirect_to @tenkenkekka, notice: 'Tenkenkekka was successfully created.' }
        format.json { render :show, status: :created, location: @tenkenkekka }
      else
        format.html { render :new }
        format.json { render json: @tenkenkekka.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tenkenkekkas/1
  # PATCH/PUT /tenkenkekkas/1.json
  def update
    respond_to do |format|
      if @tenkenkekka.update(tenkenkekka_params)
        format.html { redirect_to @tenkenkekka, notice: 'Tenkenkekka was successfully updated.' }
        format.json { render :show, status: :ok, location: @tenkenkekka }
      else
        format.html { render :edit }
        format.json { render json: @tenkenkekka.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tenkenkekkas/1
  # DELETE /tenkenkekkas/1.json
  def destroy
    @tenkenkekka.destroy
    respond_to do |format|
      format.html { redirect_to tenkenkekkas_url, notice: 'Tenkenkekka was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tenkenkekka
      @tenkenkekka = Tenkenkekka.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tenkenkekka_params
      params.require(:tenkenkekka).permit(:chosakekka_code, :chosajisseki_code, :houmon_id,monshin_attributes: [:mijisshi_riyu,:mononifurebiribiri_umumi,:zoukaichiku_umumi,:jisshi_umu ,:tenkenkekka_id])
    end
end

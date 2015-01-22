class JyoutaiUmusController < ApplicationController
  before_action :set_jyoutai_umu, only: [:show, :edit, :update, :destroy]

  # GET /jyoutai_umus
  # GET /jyoutai_umus.json
  def index
    @jyoutai_umus = JyoutaiUmu.all
  end

  # GET /jyoutai_umus/1
  # GET /jyoutai_umus/1.json
  def show
  end

  # GET /jyoutai_umus/new
  def new
    @jyoutai_umu = JyoutaiUmu.new
  end

  # GET /jyoutai_umus/1/edit
  def edit
  end

  # POST /jyoutai_umus
  # POST /jyoutai_umus.json
  def create
    @jyoutai_umu = JyoutaiUmu.new(jyoutai_umu_params)

    respond_to do |format|
      if @jyoutai_umu.save
        format.html { redirect_to @jyoutai_umu, notice: 'Jyoutai umu was successfully created.' }
        format.json { render :show, status: :created, location: @jyoutai_umu }
      else
        format.html { render :new }
        format.json { render json: @jyoutai_umu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jyoutai_umus/1
  # PATCH/PUT /jyoutai_umus/1.json
  def update
    respond_to do |format|
      if @jyoutai_umu.update(jyoutai_umu_params)
        format.html { redirect_to @jyoutai_umu, notice: 'Jyoutai umu was successfully updated.' }
        format.json { render :show, status: :ok, location: @jyoutai_umu }
      else
        format.html { render :edit }
        format.json { render json: @jyoutai_umu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jyoutai_umus/1
  # DELETE /jyoutai_umus/1.json
  def destroy
    @jyoutai_umu.destroy
    respond_to do |format|
      format.html { redirect_to jyoutai_umus_url, notice: 'Jyoutai umu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jyoutai_umu
      @jyoutai_umu = JyoutaiUmu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jyoutai_umu_params
      params.require(:jyoutai_umu).permit(:atai)
    end
end

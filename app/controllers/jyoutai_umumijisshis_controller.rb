class JyoutaiUmumijisshisController < ApplicationController
  before_action :set_jyoutai_umumijisshi, only: [:show, :edit, :update, :destroy]

  # GET /jyoutai_umumijisshis
  # GET /jyoutai_umumijisshis.json
  def index
    @jyoutai_umumijisshis = JyoutaiUmumijisshi.all
  end

  # GET /jyoutai_umumijisshis/1
  # GET /jyoutai_umumijisshis/1.json
  def show
  end

  # GET /jyoutai_umumijisshis/new
  def new
    @jyoutai_umumijisshi = JyoutaiUmumijisshi.new
  end

  # GET /jyoutai_umumijisshis/1/edit
  def edit
  end

  # POST /jyoutai_umumijisshis
  # POST /jyoutai_umumijisshis.json
  def create
    @jyoutai_umumijisshi = JyoutaiUmumijisshi.new(jyoutai_umumijisshi_params)

    respond_to do |format|
      if @jyoutai_umumijisshi.save
        format.html { redirect_to @jyoutai_umumijisshi, notice: 'Jyoutai umumijisshi was successfully created.' }
        format.json { render :show, status: :created, location: @jyoutai_umumijisshi }
      else
        format.html { render :new }
        format.json { render json: @jyoutai_umumijisshi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jyoutai_umumijisshis/1
  # PATCH/PUT /jyoutai_umumijisshis/1.json
  def update
    respond_to do |format|
      if @jyoutai_umumijisshi.update(jyoutai_umumijisshi_params)
        format.html { redirect_to @jyoutai_umumijisshi, notice: 'Jyoutai umumijisshi was successfully updated.' }
        format.json { render :show, status: :ok, location: @jyoutai_umumijisshi }
      else
        format.html { render :edit }
        format.json { render json: @jyoutai_umumijisshi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jyoutai_umumijisshis/1
  # DELETE /jyoutai_umumijisshis/1.json
  def destroy
    @jyoutai_umumijisshi.destroy
    respond_to do |format|
      format.html { redirect_to jyoutai_umumijisshis_url, notice: 'Jyoutai umumijisshi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jyoutai_umumijisshi
      @jyoutai_umumijisshi = JyoutaiUmumijisshi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jyoutai_umumijisshi_params
      params.require(:jyoutai_umumijisshi).permit(:atai)
    end
end

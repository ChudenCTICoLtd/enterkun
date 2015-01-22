class JyoutaiUmufukanousController < ApplicationController
  before_action :set_jyoutai_umufukanou, only: [:show, :edit, :update, :destroy]

  # GET /jyoutai_umufukanous
  # GET /jyoutai_umufukanous.json
  def index
    @jyoutai_umufukanous = JyoutaiUmufukanou.all
  end

  # GET /jyoutai_umufukanous/1
  # GET /jyoutai_umufukanous/1.json
  def show
  end

  # GET /jyoutai_umufukanous/new
  def new
    @jyoutai_umufukanou = JyoutaiUmufukanou.new
  end

  # GET /jyoutai_umufukanous/1/edit
  def edit
  end

  # POST /jyoutai_umufukanous
  # POST /jyoutai_umufukanous.json
  def create
    @jyoutai_umufukanou = JyoutaiUmufukanou.new(jyoutai_umufukanou_params)

    respond_to do |format|
      if @jyoutai_umufukanou.save
        format.html { redirect_to @jyoutai_umufukanou, notice: 'Jyoutai umufukanou was successfully created.' }
        format.json { render :show, status: :created, location: @jyoutai_umufukanou }
      else
        format.html { render :new }
        format.json { render json: @jyoutai_umufukanou.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jyoutai_umufukanous/1
  # PATCH/PUT /jyoutai_umufukanous/1.json
  def update
    respond_to do |format|
      if @jyoutai_umufukanou.update(jyoutai_umufukanou_params)
        format.html { redirect_to @jyoutai_umufukanou, notice: 'Jyoutai umufukanou was successfully updated.' }
        format.json { render :show, status: :ok, location: @jyoutai_umufukanou }
      else
        format.html { render :edit }
        format.json { render json: @jyoutai_umufukanou.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jyoutai_umufukanous/1
  # DELETE /jyoutai_umufukanous/1.json
  def destroy
    @jyoutai_umufukanou.destroy
    respond_to do |format|
      format.html { redirect_to jyoutai_umufukanous_url, notice: 'Jyoutai umufukanou was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jyoutai_umufukanou
      @jyoutai_umufukanou = JyoutaiUmufukanou.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jyoutai_umufukanou_params
      params.require(:jyoutai_umufukanou).permit(:atai)
    end
end

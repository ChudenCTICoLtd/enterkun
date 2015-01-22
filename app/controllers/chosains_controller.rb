class ChosainsController < ApplicationController
  before_action :set_chosain, only: [:show, :edit, :update, :destroy]

  # GET /chosains
  # GET /chosains.json
  def index
    @chosains = Chosain.all
  end

  # GET /chosains/1
  # GET /chosains/1.json
  def show
  end

  # GET /chosains/new
  def new
    @chosain = Chosain.new
  end

  # GET /chosains/1/edit
  def edit
  end

  # POST /chosains
  # POST /chosains.json
  def create
    @chosain = Chosain.new(chosain_params)
    @chosain.build_eigyosyo

    respond_to do |format|
      if @chosain.save
        format.html { redirect_to @chosain, notice: 'Chosain was successfully created.' }
        format.json { render :show, status: :created, location: @chosain }
      else
        format.html { render :new }
        format.json { render json: @chosain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chosains/1
  # PATCH/PUT /chosains/1.json
  def update
    respond_to do |format|
      if @chosain.update(chosain_params)
        format.html { redirect_to @chosain, notice: 'Chosain was successfully updated.' }
        format.json { render :show, status: :ok, location: @chosain }
      else
        format.html { render :edit }
        format.json { render json: @chosain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chosains/1
  # DELETE /chosains/1.json
  def destroy
    @chosain.destroy
    respond_to do |format|
      format.html { redirect_to chosains_url, notice: 'Chosain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # for KAZOMI-chan
  # かぞみちゃんに訊かれたら応える！
  def eigyosyo_mem
    @chosains = Chosain.where('kyoukaicode=?', params[:code])
    respond_to do |format|
      format.html{ render :index, :formats => [:html]}
      format.json{ render :index, :formats => [:json], :handlers => [:jbuilder] }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chosain
      @chosain = Chosain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chosain_params
      params.require(:chosain).permit(:namecode, :name)
    end
end

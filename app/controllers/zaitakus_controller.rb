class ZaitakusController < ApplicationController
  before_action :set_zaitaku, only: [:show, :edit, :update, :destroy]

  # GET /zaitakus
  # GET /zaitakus.json
  def index
    @zaitakus = Zaitaku.all
  end

  # GET /zaitakus/1
  # GET /zaitakus/1.json
  def show
  end

  # GET /zaitakus/new
  def new
    @zaitaku = Zaitaku.new
  end

  # GET /zaitakus/1/edit
  def edit
  end

  # POST /zaitakus
  # POST /zaitakus.json
  def create
    @zaitaku = Zaitaku.new(zaitaku_params)

    respond_to do |format|
      if @zaitaku.save
        format.html { redirect_to @zaitaku, notice: 'Zaitaku was successfully created.' }
        format.json { render :show, status: :created, location: @zaitaku }
      else
        format.html { render :new }
        format.json { render json: @zaitaku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zaitakus/1
  # PATCH/PUT /zaitakus/1.json
  def update
    respond_to do |format|
      if @zaitaku.update(zaitaku_params)
        format.html { redirect_to @zaitaku, notice: 'Zaitaku was successfully updated.' }
        format.json { render :show, status: :ok, location: @zaitaku }
      else
        format.html { render :edit }
        format.json { render json: @zaitaku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zaitakus/1
  # DELETE /zaitakus/1.json
  def destroy
    @zaitaku.destroy
    respond_to do |format|
      format.html { redirect_to zaitakus_url, notice: 'Zaitaku was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zaitaku
      @zaitaku = Zaitaku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zaitaku_params
      params.require(:zaitaku).permit(:atai)
    end
end

class KeiyakusController < ApplicationController
  before_action :set_keiyaku, only: [:show, :edit, :update, :destroy]

  # GET /keiyakus
  # GET /keiyakus.json
  def index
    #@keiyakus = Keiyaku.all
    @keiyakus = Keiyaku.page(params[:page]).per(100).order(:id)
  end

  # GET /keiyakus/1
  # GET /keiyakus/1.json
  def show
  end

  # GET /keiyakus/new
  def new
    @keiyaku = Keiyaku.new
  end

  # GET /keiyakus/1/edit
  def edit
  end

  # POST /keiyakus
  # POST /keiyakus.json
  def create
    @keiyaku = Keiyaku.new(keiyaku_params)

    respond_to do |format|
      if @keiyaku.save
        format.html { redirect_to @keiyaku, notice: 'Keiyaku was successfully created.' }
        format.json { render :show, status: :created, location: @keiyaku }
      else
        format.html { render :new }
        format.json { render json: @keiyaku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /keiyakus/1
  # PATCH/PUT /keiyakus/1.json
  def update
    respond_to do |format|
      if @keiyaku.update(keiyaku_params)
        format.html { redirect_to @keiyaku, notice: 'Keiyaku was successfully updated.' }
        format.json { render :show, status: :ok, location: @keiyaku }
      else
        format.html { render :edit }
        format.json { render json: @keiyaku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /keiyakus/1
  # DELETE /keiyakus/1.json
  def destroy
    @keiyaku.destroy
    respond_to do |format|
      format.html { redirect_to keiyakus_url, notice: 'Keiyaku was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def mikofuindex
    @target = Hash.new()
    session[:target] = @target

    #@keiyakus = Keiyaku.page(params[:page]).per(100).order(:id)    
    @keiyakus = Keiyaku.includes(:kofus).where(:kofus => {:keiyaku_id=>nil}).page(params[:page]).per(10).order(:id)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_keiyaku
      @keiyaku = Keiyaku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def keiyaku_params
      params.require(:keiyaku).permit(:okyaku_code, :chosa_kubn, :kanriku_code, :hashira_bango, :okyaku_name, :keiyakushubetsu_code, :torikigai_code,:page)
    end
end


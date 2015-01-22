class MonshinsController < ApplicationController
  before_action :set_monshin, only: [:show, :edit, :update, :destroy]

  # GET /monshins
  # GET /monshins.json
  def index
    @monshins = Monshin.all
  end

  # GET /monshins/1
  # GET /monshins/1.json
  def show
  end

  # GET /monshins/new
  def new
    @monshin = Monshin.new
   
  end

  # GET /monshins/1/edit
  def edit
  end

  # POST /monshins
  # POST /monshins.json
  def create
    @monshin = Monshin.new(monshin_params)
    respond_to do |format|
      if @monshin.save
        format.html { redirect_to @monshin, notice: 'Monshin was successfully created.' }
        format.json { render :show, status: :created, location: @monshin }
      else
        format.html { render :new }
        format.json { render json: @monshin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monshins/1
  # PATCH/PUT /monshins/1.json
  def update
    respond_to do |format|
      if @monshin.update(monshin_params)
        format.html { redirect_to @monshin, notice: 'Monshin was successfully updated.' }
        format.json { render :show, status: :ok, location: @monshin }
      else
        format.html { render :edit }
        format.json { render json: @monshin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monshins/1
  # DELETE /monshins/1.json
  def destroy
    @monshin.destroy
    respond_to do |format|
      format.html { redirect_to monshins_url, notice: 'Monshin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monshin
      @monshin = Monshin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monshin_params
      params.require(:monshin).permit(:jisshi_umu, :mijisshi_riyu, :mononifurebiribiri_umumi, :zoukaichiku_umumi,:tenkenkekka_id)
    end
end

class RiyuMonshinsController < ApplicationController
  before_action :set_riyu_monshin, only: [:show, :edit, :update, :destroy]

  # GET /riyu_monshins
  # GET /riyu_monshins.json
  def index
    @riyu_monshins = RiyuMonshin.all
  end

  # GET /riyu_monshins/1
  # GET /riyu_monshins/1.json
  def show
  end

  # GET /riyu_monshins/new
  def new
    @riyu_monshin = RiyuMonshin.new
  end

  # GET /riyu_monshins/1/edit
  def edit
  end

  # POST /riyu_monshins
  # POST /riyu_monshins.json
  def create
    @riyu_monshin = RiyuMonshin.new(riyu_monshin_params)

    respond_to do |format|
      if @riyu_monshin.save
        format.html { redirect_to @riyu_monshin, notice: 'Riyu monshin was successfully created.' }
        format.json { render :show, status: :created, location: @riyu_monshin }
      else
        format.html { render :new }
        format.json { render json: @riyu_monshin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /riyu_monshins/1
  # PATCH/PUT /riyu_monshins/1.json
  def update
    respond_to do |format|
      if @riyu_monshin.update(riyu_monshin_params)
        format.html { redirect_to @riyu_monshin, notice: 'Riyu monshin was successfully updated.' }
        format.json { render :show, status: :ok, location: @riyu_monshin }
      else
        format.html { render :edit }
        format.json { render json: @riyu_monshin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /riyu_monshins/1
  # DELETE /riyu_monshins/1.json
  def destroy
    @riyu_monshin.destroy
    respond_to do |format|
      format.html { redirect_to riyu_monshins_url, notice: 'Riyu monshin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_riyu_monshin
      @riyu_monshin = RiyuMonshin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def riyu_monshin_params
      params.require(:riyu_monshin).permit(:atai)
    end
end

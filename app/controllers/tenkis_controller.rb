class TenkisController < ApplicationController
  before_action :set_tenki, only: [:show, :edit, :update, :destroy]

  # GET /tenkis
  # GET /tenkis.json
  def index
    @tenkis = Tenki.all
  end

  # GET /tenkis/1
  # GET /tenkis/1.json
  def show
  end

  # GET /tenkis/new
  def new
    @tenki = Tenki.new
  end

  # GET /tenkis/1/edit
  def edit
  end

  # POST /tenkis
  # POST /tenkis.json
  def create
    @tenki = Tenki.new(tenki_params)

    respond_to do |format|
      if @tenki.save
        format.html { redirect_to @tenki, notice: 'Tenki was successfully created.' }
        format.json { render :show, status: :created, location: @tenki }
      else
        format.html { render :new }
        format.json { render json: @tenki.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tenkis/1
  # PATCH/PUT /tenkis/1.json
  def update
    respond_to do |format|
      if @tenki.update(tenki_params)
        format.html { redirect_to @tenki, notice: 'Tenki was successfully updated.' }
        format.json { render :show, status: :ok, location: @tenki }
      else
        format.html { render :edit }
        format.json { render json: @tenki.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tenkis/1
  # DELETE /tenkis/1.json
  def destroy
    @tenki.destroy
    respond_to do |format|
      format.html { redirect_to tenkis_url, notice: 'Tenki was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tenki
      @tenki = Tenki.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tenki_params
      params.require(:tenki).permit(:atai)
    end
end

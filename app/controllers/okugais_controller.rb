class OkugaisController < ApplicationController
  before_action :set_okugai, only: [:show, :edit, :update, :destroy]

  # GET /okugais
  # GET /okugais.json
  def index
    @okugais = Okugai.all
  end

  # GET /okugais/1
  # GET /okugais/1.json
  def show
  end

  # GET /okugais/new
  def new
    @okugai = Okugai.new
  end

  # GET /okugais/1/edit
  def edit
  end

  # POST /okugais
  # POST /okugais.json
  def create
    @okugai = Okugai.new(okugai_params)

    respond_to do |format|
      if @okugai.save
        format.html { redirect_to @okugai, notice: 'Okugai was successfully created.' }
        format.json { render :show, status: :created, location: @okugai }
      else
        format.html { render :new }
        format.json { render json: @okugai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /okugais/1
  # PATCH/PUT /okugais/1.json
  def update
    respond_to do |format|
      if @okugai.update(okugai_params)
        format.html { redirect_to @okugai, notice: 'Okugai was successfully updated.' }
        format.json { render :show, status: :ok, location: @okugai }
      else
        format.html { render :edit }
        format.json { render json: @okugai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /okugais/1
  # DELETE /okugais/1.json
  def destroy
    @okugai.destroy
    respond_to do |format|
      format.html { redirect_to okugais_url, notice: 'Okugai was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_okugai
      @okugai = Okugai.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def okugai_params
      params.require(:okugai).permit(:toritsukezetsuen_ryohifuno, :tabutsurikaku_ryohifuno)
    end
end

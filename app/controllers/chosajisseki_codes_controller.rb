class ChosajissekiCodesController < ApplicationController
  before_action :set_chosajisseki_code, only: [:show, :edit, :update, :destroy]

  # GET /chosajisseki_codes
  # GET /chosajisseki_codes.json
  def index
    @chosajisseki_codes = ChosajissekiCode.all
  end

  # GET /chosajisseki_codes/1
  # GET /chosajisseki_codes/1.json
  def show
  end

  # GET /chosajisseki_codes/new
  def new
    @chosajisseki_code = ChosajissekiCode.new
  end

  # GET /chosajisseki_codes/1/edit
  def edit
  end

  # POST /chosajisseki_codes
  # POST /chosajisseki_codes.json
  def create
    @chosajisseki_code = ChosajissekiCode.new(chosajisseki_code_params)

    respond_to do |format|
      if @chosajisseki_code.save
        format.html { redirect_to @chosajisseki_code, notice: 'Chosajisseki code was successfully created.' }
        format.json { render :show, status: :created, location: @chosajisseki_code }
      else
        format.html { render :new }
        format.json { render json: @chosajisseki_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chosajisseki_codes/1
  # PATCH/PUT /chosajisseki_codes/1.json
  def update
    respond_to do |format|
      if @chosajisseki_code.update(chosajisseki_code_params)
        format.html { redirect_to @chosajisseki_code, notice: 'Chosajisseki code was successfully updated.' }
        format.json { render :show, status: :ok, location: @chosajisseki_code }
      else
        format.html { render :edit }
        format.json { render json: @chosajisseki_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chosajisseki_codes/1
  # DELETE /chosajisseki_codes/1.json
  def destroy
    @chosajisseki_code.destroy
    respond_to do |format|
      format.html { redirect_to chosajisseki_codes_url, notice: 'Chosajisseki code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chosajisseki_code
      @chosajisseki_code = ChosajissekiCode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chosajisseki_code_params
      params.require(:chosajisseki_code).permit(:atai,:kigou)
    end
end

class ChosakekkaCodesController < ApplicationController
  before_action :set_chosakekka_code, only: [:show, :edit, :update, :destroy]

  # GET /chosakekka_codes
  # GET /chosakekka_codes.json
  def index
    @chosakekka_codes = ChosakekkaCode.all
  end

  # GET /chosakekka_codes/1
  # GET /chosakekka_codes/1.json
  def show
  end

  # GET /chosakekka_codes/new
  def new
    @chosakekka_code = ChosakekkaCode.new
  end

  # GET /chosakekka_codes/1/edit
  def edit
  end

  # POST /chosakekka_codes
  # POST /chosakekka_codes.json
  def create
    @chosakekka_code = ChosakekkaCode.new(chosakekka_code_params)

    respond_to do |format|
      if @chosakekka_code.save
        format.html { redirect_to @chosakekka_code, notice: 'Chosakekka code was successfully created.' }
        format.json { render :show, status: :created, location: @chosakekka_code }
      else
        format.html { render :new }
        format.json { render json: @chosakekka_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chosakekka_codes/1
  # PATCH/PUT /chosakekka_codes/1.json
  def update
    respond_to do |format|
      if @chosakekka_code.update(chosakekka_code_params)
        format.html { redirect_to @chosakekka_code, notice: 'Chosakekka code was successfully updated.' }
        format.json { render :show, status: :ok, location: @chosakekka_code }
      else
        format.html { render :edit }
        format.json { render json: @chosakekka_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chosakekka_codes/1
  # DELETE /chosakekka_codes/1.json
  def destroy
    @chosakekka_code.destroy
    respond_to do |format|
      format.html { redirect_to chosakekka_codes_url, notice: 'Chosakekka code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chosakekka_code
      @chosakekka_code = ChosakekkaCode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chosakekka_code_params
      params.require(:chosakekka_code).permit(:atai)
    end
end

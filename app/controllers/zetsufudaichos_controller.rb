class ZetsufudaichosController < ApplicationController
  before_action :set_zetsufudaicho, only: [:show, :edit, :update, :destroy]

  # GET /zetsufudaichos
  # GET /zetsufudaichos.json
  def index
    @zetsufudaichos = Zetsufudaicho.all
  end

  # GET /zetsufudaichos/1
  # GET /zetsufudaichos/1.json
  def show
  end

  # GET /zetsufudaichos/new
  def new
    @zetsufudaicho = Zetsufudaicho.new
  end

  # GET /zetsufudaichos/1/edit
  def edit
  end

  # POST /zetsufudaichos
  # POST /zetsufudaichos.json
  def create
    @zetsufudaicho = Zetsufudaicho.new(zetsufudaicho_params)

    respond_to do |format|
      if @zetsufudaicho.save
        format.html { redirect_to @zetsufudaicho, notice: 'Zetsufudaicho was successfully created.' }
        format.json { render :show, status: :created, location: @zetsufudaicho }
      else
        format.html { render :new }
        format.json { render json: @zetsufudaicho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zetsufudaichos/1
  # PATCH/PUT /zetsufudaichos/1.json
  def update
    respond_to do |format|
      if @zetsufudaicho.update(zetsufudaicho_params)
        format.html { redirect_to @zetsufudaicho, notice: 'Zetsufudaicho was successfully updated.' }
        format.json { render :show, status: :ok, location: @zetsufudaicho }
      else
        format.html { render :edit }
        format.json { render json: @zetsufudaicho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zetsufudaichos/1
  # DELETE /zetsufudaichos/1.json
  def destroy
    @zetsufudaicho.destroy
    respond_to do |format|
      format.html { redirect_to zetsufudaichos_url, notice: 'Zetsufudaicho was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zetsufudaicho
      @zetsufudaicho = Zetsufudaicho.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zetsufudaicho_params
      params.require(:zetsufudaicho).permit(:keiyaku_id, :scsym, :sscsym, :sscsym2, :sscsym3, :sscsym4, :haisen, :kiki, :kaishuym, :biko)
    end
end

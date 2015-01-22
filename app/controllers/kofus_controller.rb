class KofusController < ApplicationController
  before_action :set_kofu, only: [:show, :edit, :update, :destroy]

  # GET /kofus
  # GET /kofus.json
  def index
    #@kofus = Kofu.all
     
    @search = Kofu.where(chosa_ym: session[:when_year]+session[:when_month]).where(chosain_id: session[:whoami_id]).search(params[:q])

    @kofus = @search.result.order(:id)
    
    @kanrikus = []
    @hashiras = []
    @kofus.each do |kofu|
      @kanrikus << kofu.keiyaku.kanriku_code
      @hashiras << kofu.keiyaku.hashira_bango

    
    end
    @kanrikus.uniq!
    @hashiras.uniq!
    
  
    
  end

  # GET /kofus/1
  # GET /kofus/1.json
  def show
    #訪問
    @houmons = @kofu.houmons.all
    @houmon  = @kofu.houmons.build
    
    #訪問回数の自動セット
    @houmon.houmon_su = @houmons.length + 1
    @houmon.build_tenko
    @houmon.build_zaitakufuzai
    
    #点検結果
    @tenkenkekka = @houmon.tenkenkekka
    if @tenkenkekka.nil?
      @tenkenkekka = @houmon.build_tenkenkekka
    end
    
    #問診
    @monshin = @tenkenkekka.monshin
    if @monshin.nil?
      @monshin = @tenkenkekka.build_monshin
      #契約種別が０１１ならば問診未実施理由自動登録
      if @kofu.keiyaku.keiyakushubetsu_code == "011"
        @monshin.jisshi_umu = 2 
        @monshin.mijisshi_riyu = "街路灯"
      end
    end
    
    #屋内
    @okunai = @tenkenkekka.okunai
    if @okunai.nil?
      @okunai = @tenkenkekka.build_okunai
      #契約種別が０１１ならば屋内未実施理由自動登録
      if @kofu.keiyaku.keiyakushubetsu_code == "011" 
        @okunai.jisshi_umu = 2
        @okunai.mijisshi_riyu = "街路灯"
      end
    end
    #屋外
    @okugai = @tenkenkekka.okugai
    if @okugai.nil?
      @okugai = @tenkenkekka.build_okugai
    end
    #測定値
    @sokutei = @tenkenkekka.sokutei
    if @sokutei.nil?
      @sokutei = @tenkenkekka.build_sokutei
    end
    
    
  end

  # GET /kofus/new
  def new
    @kofu = Kofu.new
  end

  # GET /kofus/1/edit
  def edit
  end

  # POST /kofus
  # POST /kofus.json
  def create
    @kofu = Kofu.new(kofu_params)

    respond_to do |format|
      if @kofu.save
        format.html { redirect_to @kofu, notice: 'Kofu was successfully created.' }
        format.json { render :show, status: :created, location: @kofu }
      else
        format.html { render :new }
        format.json { render json: @kofu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kofus/1
  # PATCH/PUT /kofus/1.json
  def update
    respond_to do |format|
      if @kofu.update(kofu_params)
        format.html { redirect_to @kofu, notice: 'Kofu was successfully updated.' }
        format.json { render :show, status: :ok, location: @kofu }
      else
        format.html { render :edit }
        format.json { render json: @kofu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kofus/1
  # DELETE /kofus/1.json
  def destroy
    @kofu.destroy
    respond_to do |format|
      format.html { redirect_to kofus_url, notice: 'Kofu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def show_one
    #訪問
    @kofu = Kofu.find(params[:id])
    @houmons = @kofu.houmons.all
    
    
  end

  def addKofus    
    chosain = params[:chosa][:chosain]
    kofushubetsu = params[:chosa][:kofushubetsu]
    chosasyurui =  params[:chosa][:chosasyurui]
    shugo = params[:chosa][:shugo]
 
    
    params[:check].each do |key, val|
      puts val
      if(val=="1" and Chosain.exists?(id: chosain))
        newkofu =  Kofu.new
        newkofu.kofushubetsu_code = kofushubetsu
        newkofu.chosain_id  = chosain
        newkofu.keiyaku_id = key
        newkofu.chosasyurui_code = chosasyurui
        newkofu.shugo_code = shugo
        newkofu.save        
      end
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kofu
      @kofu = Kofu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kofu_params
      params.require(:kofu).permit(:okyaku_code, :chosa_kubn, :kanriku_code, :hashira_bango, :okyaku_name,:keiyakushubetsu_code,\
       :torikigai_code, :namecode, :shugo_code,:kofushubetsu_code,:q,:okyaku_eigyosyo_code,:okyaku_jyusyo_code,:lat,:lng,:newest_chosajisseki_code)
    end
end

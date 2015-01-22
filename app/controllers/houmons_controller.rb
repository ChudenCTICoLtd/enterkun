class HoumonsController < ApplicationController
  before_action :set_houmon, only: [:show, :edit, :update, :destroy]

  # GET /houmons
  # GET /houmons.json
  def index
    @houmons = Houmon.all

  end

  # GET /houmons/1
  # GET /houmons/1.json
  def show
    @hash = Gmaps4rails.build_markers(@houmon) do |houmon, marker|
      marker.lat houmon.lat
      marker.lng houmon.lng
      marker.infowindow houmon.houmon_su
      marker.json({title: houmon.houmon_su})
    end
  end

  # GET /houmons/new
  def new
    @houmon = Houmon.new
    @houmon.build_tenkenkekka
    @houmon.tenkenkekka.build_monshin
    @houmon.tenkenkekka.build_okugai
    @houmon.tenkenkekka.build_okunai
    @houmon.tenkenkekka.build_sokutei
    
    @houmon.build_tenko
    @houmon.build_zaitakufuzai
    
    @houmon.tenkenkekka.build_chosakekka
    @houmon.tenkenkekka.build_chosajisseki
    
    
  end

  # GET /houmons/1/edit
  def edit
  end

  # POST /houmons
  # POST /houmons.json
  def create
    @houmon = Houmon.new(houmon_params)



    respond_to do |format|
      
     #測定値（漏洩電流、絶縁抵抗）がnilの場合０を代入
      if @houmon.tenkenkekka.sokutei.roueidenryu_ikkatsu.nil? then
        @houmon.tenkenkekka.sokutei.roueidenryu_ikkatsu=0
      end
      if @houmon.tenkenkekka.sokutei.zetsuenteikou_ikkatsu.nil? then
        @houmon.tenkenkekka.sokutei.zetsuenteikou_ikkatsu=0
      end
      #調査結果を判定して格納
      #絶縁一括が０＜０．０２のとき、絶縁不良０．０２未満とし、絶縁一括が０＜０.1のとき絶縁不良０．１未満とする。その他は良好
      if @houmon.tenkenkekka.sokutei.zetsuenteikou_ikkatsu !=0 && @houmon.tenkenkekka.sokutei.zetsuenteikou_ikkatsu < 0.1 then
        if @houmon.tenkenkekka.sokutei.zetsuenteikou_ikkatsu !=0 && @houmon.tenkenkekka.sokutei.zetsuenteikou_ikkatsu < 0.02 then
          @houmon.tenkenkekka.chosakekka_code = 3
        else  
          @houmon.tenkenkekka.chosakekka_code = 2
        end
      else
        @houmon.tenkenkekka.chosakekka_code = 1
      end
    
      #調査実績を判定して格納
      #在宅かつ問診未実施なら終了、以外完了
      #不在のとき、絶縁一括のみ入力があればメガ終了とする。漏洩一括に入力があればリーク終了とする

      @fuga = @houmon.tenkenkekka.monshin.jisshi_umu
      if @houmon.zaitakufuzai.id == 1
        if @houmon.tenkenkekka.monshin.jisshi_umu == '2' 
          @houmon.tenkenkekka.chosajisseki_code = 2
        else
          @houmon.tenkenkekka.chosajisseki_code = 1
        end
      else
        if @houmon.tenkenkekka.sokutei.roueidenryu_ikkatsu == 0 && @houmon.tenkenkekka.sokutei.zetsuenteikou_ikkatsu != 0
          @houmon.tenkenkekka.chosajisseki_code = 4
        else
          @houmon.tenkenkekka.chosajisseki_code = 3
        end
      end
      #なおかつ最新実績として交付モデルにも更新する
      @kofu_for_newestjisseki = Kofu.find(params[:houmon][:kofu_id])
      @kofu_for_newestjisseki.newest_chosajisseki_code = @houmon.tenkenkekka.chosajisseki_code
      
      
      
      
      if @houmon.save && @kofu_for_newestjisseki.save

        # Season2用暫定 ここから -->
        @@h = {}
        @@h.store(:chosa_ym, session[:when_year]+session[:when_month])  # セッション内の年月を調査年月とする
        @@h.store(:chosain_id, session[:whoami_id])                     # セッション内のログインＩＤを調査員ＩＤとする
        @@h.store(:kofu_kensu,                                          # 調査年月＋調査員ＩＤで交付の件数をカウント
                  Kofu.where(chosa_ym: session[:when_year]+session[:when_month]).where(chosain_id: session[:whoami_id]).count)
        @@h.store(:datetime_now, DateTime.now.in_time_zone)
        STDOUT.puts("Rails2Unicage:"+@@h.to_json)                       # Unicageへの引き渡しのため標準出力にJSONで出す

        # 確認用にLV1フォルダ内にファイルを作って出力
        f = File.open("./LV1/#{Time.now.strftime("%Y%m%d_%H%M%S")}.txt", 'a')
        f.puts("Rails2Unicage:"+@@h.to_json)
        f.close
        # <-- Season2用暫定 ここまで

        format.html { redirect_to @houmon, notice: '点検結果が正常に登録されました。' }
        format.json { render :show, status: :created, location: @houmon }
      else
        
        format.html { redirect_to :back }
        format.json { render json: @houmon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /houmons/1
  # PATCH/PUT /houmons/1.json
  def update
    respond_to do |format|
      if @houmon.update(houmon_params)
        format.html { redirect_to @houmon, notice: 'Houmon was successfully updated.' }
        format.json { render :show, status: :ok, location: @houmon }
      else
        format.html { render :edit }
        format.json { render json: @houmon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /houmons/1
  # DELETE /houmons/1.json
  def destroy
    @houmon.destroy
    respond_to do |format|
      format.html { redirect_to houmons_url, notice: 'Houmon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_houmon
      @houmon = Houmon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def houmon_params
      params.require(:houmon).permit(:houmon_ymd,:houmon_su,:tenki,:zaitaku_jotai,:kofu_id,:lat,:lng,:picture,\
      tenkenkekka_attributes: [:chosakekka_code,:chosajisseki_code, \
        monshin_attributes: [:mijisshi_riyu,:mononifurebiribiri_umumi,:zoukaichiku_umumi,:jisshi_umu ,:tenkenkekka_id],\
        okugai_attributes:[:toritsukezetsuen_ryohifuno,:tabutsurikaku_ryohifuno,:tenkenkekka_id],\
        okunai_attributes:[:mijisshi_riyu,:jisshi_umu,:bundenbanhason_umu,:juudenburosyutsu_umu,:tenkenkekka_id],\
        sokutei_attributes:[:kairo_su,:roueidenryu_ikkatsu,:zetsuenteikou_ikkatsu,:tenkenkekka_id]\
        ])
    end
end

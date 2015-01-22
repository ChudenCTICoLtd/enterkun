class NaisenchosahyouController < ApplicationController
  require 'active_support'
  require 'date'
  def index
    
    @futakuym = session[:when_year]+session[:when_month]
    #付託年月から１ヶ月前の年月を求める
    datetmp = Date::new(session[:when_year].to_i, session[:when_month].to_i, 1)
    datetmp - 1.month
    @zengetsufutakuym = datetmp.year.to_s + datetmp.month.to_s
    @chosaym = session[:when_year]+session[:when_month]

    
    #調査交付数(A):契約数より、付託年月で絞り込み調査区分（１はさらに契約種別ごと）ごとの件数
    @a={
      
      dentou: Keiyaku.where("futaku_ym='"+@futakuym+"' AND chosa_kubn = '1' AND torikigai_code = '1'").count(),
			denryoku: Keiyaku.where("futaku_ym='"+@futakuym+"' AND chosa_kubn = '1' AND torikigai_code = '2'").count(),
			tokutei: Keiyaku.where("futaku_ym='"+@futakuym+"' AND chosa_kubn = '5'").count(),
			saishin: Keiyaku.where("futaku_ym='"+@futakuym+"' AND chosa_kubn = '3'").count(),
			kanhen: Keiyaku.where("futaku_ym='"+@futakuym+"' AND chosa_kubn = '4'").count(),
			syoukei: Keiyaku.where("futaku_ym='"+@futakuym+"'").count()
      }
      #
    @b={
      dentou: Keiyaku.where("futaku_ym='"+@zengetsufutakuym+"' AND chosa_kubn = '1' AND torikigai_code = '1'").count(),
			denryoku: Keiyaku.where("futaku_ym='"+@zengetsufutakuym+"' AND chosa_kubn = '1' AND torikigai_code = '2'").count(),
			tokutei: Keiyaku.where("futaku_ym='"+@zengetsufutakuym+"' AND chosa_kubn = '5'").count(),
			saishin: Keiyaku.where("futaku_ym='"+@zengetsufutakuym+"' AND chosa_kubn = '3'").count(),
			kanhen: Keiyaku.where("futaku_ym='"+@zengetsufutakuym+"' AND chosa_kubn = '4'").count(),
			syoukei: Keiyaku.where("futaku_ym='"+@zengetsufutakuym+"'").count()
    }
    
    #当月調査対象数(C=A+B):調査交付数と前月残数の合計  
    @c = @a.merge(@b){|key,vala,valb| vala+valb}
    
    #内線調査表による調査実施数(E):調査結果より最終的なお客さまの調査実績が完了と終了の件数合計
   # @Keiyakus = Keiyaku.where("futaku_ym='"+@futakuym+"'")
    #@Keiyakus.each do |keiyaku|
     # if @keiyaku.kofus.each do |kofu|
      #  @kofu.houmons.each do |houmon|
        #  @fuga = @houmon.tenkenkekka.chosakekka_code
        #  @hoge = @houmon.tenkenkekka.chosajisseki_code
        #end
        #end.empty?
      #aaa
    #  end
    
    #end
    
   @e={
     dentou: Kofu.where(keiyaku_id: Keiyaku.where("futaku_ym='"+@futakuym+"' AND chosa_kubn = '1' AND torikigai_code = '1'") ).where(chosa_ym: @chosaym).count(),
		denryoku: Keiyaku.where("futaku_ym='"+@futakuym+"' AND chosa_kubn = '1' AND torikigai_code = '2'").count(),
		tokutei: Keiyaku.where("futaku_ym='"+@futakuym+"' AND chosa_kubn = '5'").count(),
		saishin: Keiyaku.where("futaku_ym='"+@futakuym+"' AND chosa_kubn = '3'").count(),
		kanhen: Keiyaku.where("futaku_ym='"+@futakuym+"' AND chosa_kubn = '4'").count(),
		syoukei: Keiyaku.where("futaku_ym='"+@futakuym+"'").count()
     }
    
    #漏れ電流計測定数(J):調査結果より最終的なお客さまの調査実績がリーク終了とメガ終了の件数合計
    @j={
			dentou: 1,
			denryoku: 2,
			tokutei: 3,
			saishin: 4,
			kanhen: 5,
			syoukei: 6
    }
    #計(M=E+J)
    @m = @e.merge(@j){|key,vale,valj| vale+valj}

    #調査未済数【当月残】(C-M)
    @zan=@c.merge(@m){|key,valc,valm| valc-valm}
  end
end

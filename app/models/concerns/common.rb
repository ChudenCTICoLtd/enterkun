module Common
  def dump
    @@h = {}
    dump_main

    STDOUT.puts("Rails2Unicage:"+@@h.to_json)

    # 確認用にLV1フォルダ内にファイルを作って出力しているだけ
    f = File.open("./LV1/#{Time.now.strftime("%Y%m%d_%H%M%S")}.txt", 'a')
    f.puts("Rails2Unicage:"+@@h.to_json)
    f.close

  end

  def dump_main
    self.attributes.each{ |key, val|
      @@h.store(self.class.to_s+"."+key,val)
    }
  end

end
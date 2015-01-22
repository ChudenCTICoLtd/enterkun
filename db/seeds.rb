# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "csv"

#Eigyosyoモデルの初期データ取り込み
Eigyosyo.delete_all
conn = ActiveRecord::Base.connection
rc = conn.raw_connection
rc.exec("COPY eigyosyos(kyoukaicode,kyoukaimei) FROM STDIN WITH CSV")	 
file = File.open('db/eigyosyos.csv', 'r')
while !file.eof?
  # Add row to copy data
  rc.put_copy_data(file.readline)
 end
 
# We are done adding copy data
rc.put_copy_end
	 
# Display any error messages
while res = rc.get_result
	if e_message = res.error_message
	  p e_message
	end
end


#Chosainモデルの初期データ取り込み
Chosain.delete_all
Chosain.connection.execute("SELECT SETVAL('chosains_id_seq',1,FALSE)")

# Setup raw connection
conn = ActiveRecord::Base.connection
rc = conn.raw_connection
rc.exec("COPY chosains(kyoukaicode,namecode,name,created_at,updated_at) FROM STDIN WITH CSV")
	 
file = File.open('db/chosains.csv', 'r')
while !file.eof?
 #Add row to copy data
 rc.put_copy_data(file.readline)
end
 
# We are done adding copy data
rc.put_copy_end
	 
# Display any error messages
while res = rc.get_result
	if e_message = res.error_message#
	  p e_message
	end
end

#Keiyakuモデルの初期データ取り込み
Keiyaku.delete_all
Keiyaku.connection.execute("SELECT SETVAL('keiyakus_id_seq',1,FALSE)")
# Setup raw connection
conn = ActiveRecord::Base.connection
rc = conn.raw_connection
rc.exec("COPY keiyakus(okyaku_code,chosa_kubn,kanriku_code,hashira_bango,okyaku_name,keiyakushubetsu_code,torikigai_code,created_at,updated_at,futaku_ym,shugo_code,kyoukaicode) FROM STDIN WITH CSV")
	 
file = File.open('db/keiyakus.csv', 'r')
while !file.eof?
  # Add row to copy data
  rc.put_copy_data(file.readline)
 end
 
# We are done adding copy data
rc.put_copy_end
	 
# Display any error messages
while res = rc.get_result
	if e_message = res.error_message
	  p e_message
	end
end


#kofuモデルの初期データ取り込み
Kofu.delete_all
Kofu.connection.execute("SELECT SETVAL('kofus_id_seq',1,FALSE)")

# Setup raw connection
conn = ActiveRecord::Base.connection
rc = conn.raw_connection
rc.exec("COPY kofus(kofushubetsu_code,chosain_id,keiyaku_id,chosasyurui_code,shugo_code,created_at,updated_at,chosa_ym) FROM STDIN WITH CSV")
	 
file = File.open('db/kofus.csv', 'r')
while !file.eof?
 #  Add row to copy data
  rc.put_copy_data(file.readline)
 end
 
# We are done adding copy data
rc.put_copy_end
	 
# Display any error messages
while res = rc.get_result
	if e_message = res.error_message
	  p e_message
	end
end



#状態（有、無）、状態（有、無、未実施）、状態（有、無、不可能）、天候、在宅、調査結果、調査実績の初期データt裏込み
JyoutaiUmu.first_or_create([
  {id:1,atai:'有'},
  {id:2,atai:'無'}
])

JyoutaiUmumijisshi.first_or_create([
  {id:1,atai:'有'},
  {id:2,atai:'無'},
  {id:3,atai:'未実施'}
])
JyoutaiUmufukanou.first_or_create([
  {id:1,atai:'良'},
  {id:2,atai:'否'},
  {id:3,atai:'不可能'}
])
Tenki.first_or_create([
  {id:1,atai:'晴'},
  {id:2,atai:'曇'},
  {id:3,atai:'雨'},
  {id:4,atai:'雪'}
])
Zaitaku.first_or_create([
  {id:1,atai:'在宅'},
  {id:2,atai:'不在'}
])
ChosakekkaCode.first_or_create([
  {id:1,atai:'良好'},
  {id:2,atai:'絶縁不良0.1MΩ未満'},
  {id:3,atai:'絶縁不良0.02MΩ未満'}
])
ChosajissekiCode.first_or_create([
  {id:1,atai:'完了',kigou:'●'},
  {id:2,atai:'終了',kigou:'○'},
  {id:3,atai:'リーク終了',kigou:'△'},
  {id:4,atai:'メガ終了',kigou:'▲'},
  
])
RiyuMonshin.first_or_create([
  {id:1,atai:'街路灯'},
  {id:2,atai:'信号機'},
  {id:3,atai:'携帯基地局'},
  {id:4,atai:'その他無人施設'},
  {id:5,atai:'お客さま都合'}
])
RiyuOkunai.first_or_create([
  {id:1,atai:'街路灯'},
  {id:2,atai:'信号機'},
  {id:3,atai:'携帯基地局'},
  {id:4,atai:'その他無人施設'},
  {id:5,atai:'お客さま都合'}
])
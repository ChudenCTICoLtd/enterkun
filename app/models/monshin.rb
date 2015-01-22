class Monshin < ActiveRecord::Base
  belongs_to :tenkenkekka
  belongs_to :monshin_jisshi_umu , :class_name => "JyoutaiUmu" , :foreign_key => "jisshi_umu"  
  belongs_to :mononifurebiribiri_umumijisshi , :class_name => "JyoutaiUmumijisshi" , :foreign_key => "mononifurebiribiri_umumi"
  belongs_to :zokaichiku_umumijisshi , :class_name => "JyoutaiUmumijisshi" , :foreign_key => "zoukaichiku_umumi"
  belongs_to :mijisshiriyu_list , :class_name => "RiyuMonshin" , :foreign_key => "mijisshi_riyu"

  include Common
  after_commit :dump 
end

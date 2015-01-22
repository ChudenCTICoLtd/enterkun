class Okunai < ActiveRecord::Base
  belongs_to :tenkenkekka
  belongs_to :okunai_jisshi_umu , :class_name => "JyoutaiUmu" , :foreign_key => "jisshi_umu"  
  belongs_to :bundenbanhason , :class_name => "JyoutaiUmu" , :foreign_key => "bundenbanhason_umu"
  belongs_to :juudenburosyutsu , :class_name => "JyoutaiUmu" , :foreign_key => "juudenburosyutsu_umu"
  belongs_to :mijisshiriyu_list , :class_name => "RiyuOkunai" , :foreign_key => "mijisshi_riyu"

  include Common
  after_commit :dump
end

class Okugai < ActiveRecord::Base
  belongs_to :tenkenkekka
  belongs_to :toritsukezetsuen , :class_name => "JyoutaiUmufukanou" , :foreign_key => "toritsukezetsuen_ryohifuno"
  belongs_to :tabutsurikaku , :class_name => "JyoutaiUmufukanou" , :foreign_key => "tabutsurikaku_ryohifuno"

  include Common
  after_commit :dump 
end

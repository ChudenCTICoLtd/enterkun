class Houmon < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  belongs_to :kofu
  has_one    :tenkenkekka
  accepts_nested_attributes_for :tenkenkekka
  belongs_to :tenko  , :class_name => "Tenki" , :foreign_key => "tenki"
  belongs_to :zaitakufuzai , :class_name => "Zaitaku" , :foreign_key => "zaitaku_jotai"
  
  include Common
  after_commit :dump 
end

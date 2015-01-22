class Kofu < ActiveRecord::Base
  belongs_to :keiyaku
  belongs_to :chosain
  has_many :houmons
  belongs_to :chosajisseki , :class_name => "ChosajissekiCode" , :foreign_key => "newest_chosajisseki_code"

  include Common
  after_commit :dump
end

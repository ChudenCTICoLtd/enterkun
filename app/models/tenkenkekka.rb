class Tenkenkekka < ActiveRecord::Base
  belongs_to :houmon
  has_one    :monshin
  accepts_nested_attributes_for :monshin
  has_one    :okunai
  accepts_nested_attributes_for :okunai
  has_one    :okugai
  accepts_nested_attributes_for :okugai
  has_one    :sokutei
  accepts_nested_attributes_for :sokutei
  belongs_to :chosakekka  , :class_name => "ChosakekkaCode" , :foreign_key => "chosakekka_code"
  belongs_to :chosajisseki , :class_name => "ChosajissekiCode" , :foreign_key => "chosajisseki_code"

  include Common
  after_commit :dump 
end

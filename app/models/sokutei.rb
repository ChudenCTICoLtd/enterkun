class Sokutei < ActiveRecord::Base
   belongs_to :tenkenkekka

  include Common
  after_commit :dump 
end

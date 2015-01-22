class Eigyosyo < ActiveRecord::Base
  self.primary_key="kyoukaicode"
  has_many :chosains
end

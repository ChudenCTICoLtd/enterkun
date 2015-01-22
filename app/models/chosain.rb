class Chosain < ActiveRecord::Base
  has_many :kofus
  belongs_to :eigyosyo, :foreign_key => 'kyoukaicode'
end

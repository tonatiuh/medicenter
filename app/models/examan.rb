class Examan < ActiveRecord::Base
  attr_accessible :titulo

  has_one :reconocimiento
end

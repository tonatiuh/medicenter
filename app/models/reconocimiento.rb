class Reconocimiento < ActiveRecord::Base
  attr_accessible :cardiobascular, :digestivo, :endocrino, :examan_id, :muscular, :neurologico, :otros, :respiratorio, :urogenital

  belongs_to :examan
end

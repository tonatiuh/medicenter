class Paciente < ActiveRecord::Base
  attr_accessible :antecedentes_heredofamiliares, :antecedentes_no_patologicos, :antecedentes_patologicos, :lugar_de_nacimiento, :nombre, :telefono
end

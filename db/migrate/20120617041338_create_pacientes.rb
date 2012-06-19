class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :nombre
      t.integer :telefono
      t.string :lugar_de_nacimiento
      t.text :antecedentes_patologicos
      t.text :antecedentes_no_patologicos
      t.text :antecedentes_heredofamiliares

      t.timestamps
    end
  end
end

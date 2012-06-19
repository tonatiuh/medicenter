class CreateReconocimientos < ActiveRecord::Migration
  def change
    create_table :reconocimientos do |t|
      t.integer :examan_id
      t.text :endocrino
      t.text :cardiobascular
      t.text :urogenital
      t.text :digestivo
      t.text :muscular
      t.text :respiratorio
      t.text :neurologico
      t.text :otros

      t.timestamps
    end
  end
end

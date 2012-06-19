class CreateExamen < ActiveRecord::Migration
  def change
    create_table :examen do |t|
      t.string :titulo

      t.timestamps
    end
  end
end

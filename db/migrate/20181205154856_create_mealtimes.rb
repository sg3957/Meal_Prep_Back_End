class CreateMealtimes < ActiveRecord::Migration[5.2]
  def change
    create_table :mealtimes do |t|
      t.string :name
      t.integer :day_id
      t.timestamps
    end
  end
end

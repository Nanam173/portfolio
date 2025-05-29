class CreateImages < ActiveRecord::Migration[8.0]
  def change
    create_table :images do |t|
      t.references :work, null: false, foreign_key: true
      t.string :file_name

      t.timestamps
    end
  end
end

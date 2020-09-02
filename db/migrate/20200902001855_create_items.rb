class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :item_name
      t.string :image_id
      t.string :work_period
      t.text :introduction
      t.string :people
      t.string :salary
      t.string :work_time
      t.string :payment
      t.string :place

      t.timestamps
    end
  end
end

class CreateItemtowns < ActiveRecord::Migration[5.2]
  def change
    create_table :itemtowns do |t|
      t.string :add_youtube
      t.string :acc_twitter
      t.timestamps
    end
  end
end

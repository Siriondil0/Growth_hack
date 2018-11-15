class CreateMailDjeuns < ActiveRecord::Migration[5.2]
  def change
    create_table :mail_djeuns do |t|
      t.string :name
      t.string :email
      t.timestamps
    end
  end
end

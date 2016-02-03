class CreateMybutts < ActiveRecord::Migration
  def change
    create_table :mybutts do |t|
      t.string :name
      t.string :cturl

      t.timestamps
    end
  end
end

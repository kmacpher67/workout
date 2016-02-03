class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :shortmessage
      t.text :longmessage
      t.datetime :starttime
      t.datetime :endtime

      t.timestamps
    end
  end
end

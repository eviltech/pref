class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :ratio
      t.datetime :run_date
      t.string :state

      t.timestamps
    end
  end
end

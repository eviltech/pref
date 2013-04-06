class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.belongs_to :user
      t.belongs_to :game

      t.integer :mountain
      t.integer :pool

      t.timestamps
    end
  end
end

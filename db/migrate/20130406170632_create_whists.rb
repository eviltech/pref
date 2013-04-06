class CreateWhists < ActiveRecord::Migration
  def change
    create_table :whists do |t|
      t.belongs_to :participation
      t.belongs_to :user

      t.integer :value

      t.timestamps
    end
  end
end

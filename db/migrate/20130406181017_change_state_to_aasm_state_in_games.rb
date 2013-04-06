class ChangeStateToAasmStateInGames < ActiveRecord::Migration
  def change
    rename_column :games, :state, :aasm_state
  end
end

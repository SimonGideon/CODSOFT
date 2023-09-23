class AddTRefeicketrencesToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :ticket, null: false, foreign_key: true
  end
end

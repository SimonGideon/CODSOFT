class AddRefencesToBus < ActiveRecord::Migration[7.0]
  def change
    add_reference :buses, :ticket, null: false, foreign_key: true
    add_reference :buses, :track, null: false, foreign_key: true
  end
end

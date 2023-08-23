class AddTrackReferencesToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :track, null: false, foreign_key: true
  end
end

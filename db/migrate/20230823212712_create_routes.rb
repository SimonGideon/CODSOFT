class CreateRoutes < ActiveRecord::Migration[7.0]
  def change
    create_table :routes do |t|
      t.string :route_point_a
      t.string :route_point_b
      t.integer :price
      t.datetime :departure

      t.timestamps
    end
  end
end

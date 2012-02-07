class CreateSeriesTable < ActiveRecord::Migration
  def up
    create_table :series do |t|
      t.string :name

      t.timestamps
    end
  end

  def down
    drop_table :series
  end
end

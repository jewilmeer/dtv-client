class CreateEpisodesTable < ActiveRecord::Migration
  def up
    create_table :episodes do |t|
      t.string :title

      t.timestamps
    end
  end

  def down
    drop_table :episodes
  end
end

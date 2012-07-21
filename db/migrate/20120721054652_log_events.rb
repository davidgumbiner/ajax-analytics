class LogEvents < ActiveRecord::Migration
  def up
    create_table :events do |t|
      t.text :name
      t.text :uid
    end
  end

  def down
    drop_table :events
  end
end

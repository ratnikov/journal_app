class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.string :name
      t.text :body
      t.references :journal
      t.references :owner

      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end

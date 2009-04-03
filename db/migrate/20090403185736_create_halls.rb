class CreateHalls < ActiveRecord::Migration
  def self.up
    create_table :halls do |t|
      t.references :charade	
      t.datetime :date

      t.timestamps
    end
  end

  def self.down
    drop_table :halls
  end
end

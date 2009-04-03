class CreateCharades < ActiveRecord::Migration
  def self.up
    create_table :charades do |t|
      t.string :name
      t.string :question
      t.string :answer

      t.timestamps
    end
  end

  def self.down
    drop_table :charades
  end
end

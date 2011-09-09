class CreatePackageinfos < ActiveRecord::Migration
  def self.up
    create_table :packageinfos do |t|
      t.string :name
      t.string :details
      t.integer :price
      t.string :contract
      t.integer :category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :packageinfos
  end
end

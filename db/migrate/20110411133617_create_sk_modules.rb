class CreateSkModules < ActiveRecord::Migration
  def self.up
    create_table :sk_modules do |t|
      t.string :name
      t.string :subdomain
      t.boolean :enabled
      t.string :machine_name

      t.timestamps
    end
  end

  def self.down
    drop_table :sk_modules
  end
end

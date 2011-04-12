class CreateDiscussions < ActiveRecord::Migration

	def self.up
		create_table :discussions do | t |
			t.string :title
			t.text :content
			t.belongs_to :group

			t.timestamps
		end
	end


	def self.down
		drop_table :discussions
	end

end

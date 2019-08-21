class CreateFavorites < ActiveRecord::Migration[5.1]
    def change
        create_table :favorites do |t|
            t.integer :username_id
            t.integer :jokes_id
        end
    end
end

class CreateJokes < ActiveRecord::Migration[5.1]
    def change
        create_table :jokes do |t|
            t.string :content
        end
    end
 end
 
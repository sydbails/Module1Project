class CreateJokes < ActiveRecord::Migration
    def change
        create_table :jokes do |t|
            t.string :content
        end
    end
end
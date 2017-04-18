class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :search_word
      t.string :vibe
    end
  end
end

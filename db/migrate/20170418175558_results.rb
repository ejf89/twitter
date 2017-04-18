class Results < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :search
      t.string :vibe
    end
  end
end

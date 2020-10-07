class CreateJokes < ActiveRecord::Migration[6.0]
  def change
    create_table :jokes do |t|
      t.string :text
      t.string :markov_translation
      t.timestamps
    end
  end
end

class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
      t.string :shouter
      t.text :body
      t.references :user, index: true

      t.timestamps
    end
  end
end

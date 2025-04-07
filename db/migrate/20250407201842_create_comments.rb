class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.belongs_to :project
      t.belongs_to :user
      t.text :body

      t.datetime :created_at, null: false
    end
  end
end

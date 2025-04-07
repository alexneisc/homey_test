class CreateStatusHistories < ActiveRecord::Migration[8.0]
  def change
    create_table :status_histories do |t|
      t.belongs_to :project
      t.belongs_to :user
      t.string :status

      t.datetime :created_at, null: false
    end
  end
end

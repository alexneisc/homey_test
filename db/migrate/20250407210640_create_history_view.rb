class CreateHistoryView < ActiveRecord::Migration[8.0]
  def up
    execute <<~SQL.squish
      CREATE VIEW histories AS
        SELECT *, 1 AS its_comment FROM comments UNION SELECT *, 0 AS its_comment FROM status_histories
    SQL
  end

  def down
    execute <<~SQL.squish
      DROP VIEW IF EXISTS histories;
    SQL
  end
end

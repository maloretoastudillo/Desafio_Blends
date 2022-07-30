class CreateJoinTableEvaluation < ActiveRecord::Migration[6.1]
  def change
    create_join_table :wines, :experts do |t|
      t.index [:wine_id, :expert_id]
      t.index [:expert_id, :wine_id]
    end
  end
end

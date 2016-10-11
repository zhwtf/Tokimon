class AddIdToTokimons < ActiveRecord::Migration[5.0]
  def change
    add_reference :tokimons, :trainer, foreign_key: true
  end
end

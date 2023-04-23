class CreateKlineCharts < ActiveRecord::Migration[5.0]
  def change
    create_table :kline_charts do |t|
      t.float :open
      t.float :close
      t.float :high
      t.float :low

      t.timestamps
    end
  end
end

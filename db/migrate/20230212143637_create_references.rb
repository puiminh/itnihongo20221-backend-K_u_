class CreateReferences < ActiveRecord::Migration[6.0]
  def change
    create_table :references do |t|
      t.string :link
      t.belongs_to :post, index: true
      t.timestamps
    end
  end
end

class CreateTombstones < ActiveRecord::Migration[5.0]
  def change
    create_table :tombstones do |t|
      t.attachment :acquiror_logo, null: false
      t.text :acquired_text, null: false, default: "ACQUIRED:"
      t.attachment :acquired_logo, null: false
      t.text :year, null: false
      t.text :representation, null: false
      t.text :conducted_text, null: false
    end
  end
end

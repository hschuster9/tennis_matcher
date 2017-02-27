class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :comment_by
      t.datetime :created_at
      t.text :content
      t.integer :event_id

    end
  end
end

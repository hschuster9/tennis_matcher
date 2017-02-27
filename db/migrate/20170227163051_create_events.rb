class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
            t.string :title
            t.string :posted_by
            t.datetime :created_at
            t.string :location
            t.decimal :level
            t.text :description

    end
  end
end

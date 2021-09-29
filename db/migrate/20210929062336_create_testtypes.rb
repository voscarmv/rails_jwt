class CreateTesttypes < ActiveRecord::Migration[6.1]
  def change
    create_table :testtypes do |t|
      t.binary :binary
      t.boolean :boolean
      t.date :date
      t.datetime :datetime
      t.decimal :decimal
      t.float :float
      t.integer :integer
      t.string :string
      t.text :text
      t.time :time
      t.timestamp :timestamp

      t.timestamps
    end
  end
end

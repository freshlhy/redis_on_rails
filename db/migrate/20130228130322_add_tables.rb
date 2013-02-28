class AddTables < ActiveRecord::Migration

  def change

    create_table :conferences, :force => true do |t|
      t.string :name, null: false
      t.timestamps
    end

    create_table :events, :force => true do |t|
      t.string :type, null: false, default: "Event"
      t.text :description
      t.timestamps
    end

    create_table :presenters, :force => true do |t|
      t.string :name, null: false
      t.timestamps
    end

    create_table :talks, :force => true do |t|
      t.string :name, null: false
      t.integer :presenter_id, null: false
      t.timestamps
    end

    create_table :tutorials, :force => true do |t|
      t.string :name, null: false
      t.integer :presenter_id, null: false
      t.integer :max_attendees, null: false, default: 25
      t.timestamps
    end
  end

end

class SorceryCore < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string :email,            null: false
      t.string :crypted_password
      t.string :salt

      t.timestamps                null: false
    end

    add_index :teachers, :email, unique: true
  end
end

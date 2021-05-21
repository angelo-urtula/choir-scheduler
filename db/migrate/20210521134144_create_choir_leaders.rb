class CreateChoirLeaders < ActiveRecord::Migration[6.1]
  def change
    create_table :choir_leaders do |t|
      t.string :name
      t.string :password_digest
      t.string :home_locale
      t.string :email
      t.integer :phone_number
      t.string :district
      t.string :voice
      t.boolean :organist

      t.timestamps
    end
  end
end

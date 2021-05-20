class CreateChoirMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :choir_members do |t|
      t.string :email
      t.string :password_digest
      t.string :uid
      t.string :provider
      t.string :name
      t.string :voice
      t.integer :height
      t.string :home_locale
      t.integer :age
      t.integer :phone_number
      t.string :district

      t.timestamps
    end
  end
end

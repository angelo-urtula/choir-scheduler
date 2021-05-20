class CreateChoirMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :choir_members do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :uid
      t.string :provider
      t.string :name
      t.string :voice
      t.string :height
      t.string :home_locale
      t.string :age
      t.string :phone_number
      t.string :district

      t.timestamps
    end
  end
end

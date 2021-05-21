class CreateServiceTimes < ActiveRecord::Migration[6.1]
  def change
    create_table :service_times do |t|
      t.foreign_key :choir_members
      t.foreign_key :choir_leaders
      t.string :language
      t.datetime :time
      t.string :locale
      t.string :hymns

      t.timestamps
    end
  end
end

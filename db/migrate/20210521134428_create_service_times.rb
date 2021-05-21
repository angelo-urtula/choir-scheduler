class CreateServiceTimes < ActiveRecord::Migration[6.1]
  def change
    create_table :service_times do |t|
      t.integer :choir_member_id
      t.integer :choir_leader_id
      t.string :language
      t.datetime :time
      t.string :locale
      t.string :hymns

      t.timestamps
    end
  end
end

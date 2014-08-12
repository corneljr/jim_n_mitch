class CreateBirthdays < ActiveRecord::Migration
  def change
    create_table :birthdays do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end

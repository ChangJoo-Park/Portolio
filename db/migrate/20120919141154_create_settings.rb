class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :logostring
      t.text :maindescription
      t.string :mainimageurl

      t.timestamps
    end
  end
end

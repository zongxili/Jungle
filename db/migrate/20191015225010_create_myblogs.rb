class CreateMyblogs < ActiveRecord::Migration
  def change
    create_table :myblogs do |t|

      t.timestamps null: false
    end
  end
end

class CreateGotos < ActiveRecord::Migration
  def change
    create_table :gotos do |t|
      t.string :name
      t.boolean :done

      t.timestamps
    end
  end
end

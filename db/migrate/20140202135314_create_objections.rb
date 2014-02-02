class CreateObjections < ActiveRecord::Migration
  def change
    create_table :objections do |t|
      t.string :title
      t.string :objection
      t.string :rebuttal
      t.string :tag

      t.timestamps
    end
  end
end

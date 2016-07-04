class CreateFollowings < ActiveRecord::Migration
  def change
    create_table :followings do |t|
      t.references :user, index: true, foreign_key: true
      t.references :followee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

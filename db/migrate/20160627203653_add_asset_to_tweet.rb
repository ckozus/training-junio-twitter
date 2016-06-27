class AddAssetToTweet < ActiveRecord::Migration
  def change
    add_attachment :tweets, :asset
  end
end

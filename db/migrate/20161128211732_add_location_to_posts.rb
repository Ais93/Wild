class AddLocationToPosts < ActiveRecord::Migration[5.0]
  def change
    add_reference :posts, :location, foreign_key: true
  end
end

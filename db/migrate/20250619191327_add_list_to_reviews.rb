class AddListToReviews < ActiveRecord::Migration[8.0]
  def change
    add_reference :reviews, :list, null: false, foreign_key: true
  end
end

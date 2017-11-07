class AddRatingRefToContracts < ActiveRecord::Migration[5.1]
  def change
    add_reference :contracts, :Rating, foreign_key: true
  end
end

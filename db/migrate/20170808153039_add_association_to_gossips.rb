class AddAssociationToGossips < ActiveRecord::Migration[5.1]
  def change
    add_reference :gossips, :corsair, index: true
  end
end

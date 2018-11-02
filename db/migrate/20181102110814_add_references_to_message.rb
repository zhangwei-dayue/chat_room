class AddReferencesToMessage < ActiveRecord::Migration[5.1]
  def change
    add_reference :messages, :user, index: true
    add_reference :messages, :chatroom, index: true
  end
end

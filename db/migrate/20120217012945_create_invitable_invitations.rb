class CreateInvitableInvitations < ActiveRecord::Migration
  def change
    create_table :invitable_invitations do |t|
      t.string :name
      t.string :email
      t.integer :invitable_id
      t.string :invitable_type
      t.string :code

      t.timestamps
    end
  end
end

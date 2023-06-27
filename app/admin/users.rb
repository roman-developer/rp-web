ActiveAdmin.register User do
  permit_params :email, :confirmed_at
  
  scope :all
  scope :confirmed
  scope :unconfirmed

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    column :confirmed_at
    actions
  end

  action_item :force_confirmation, only: :show do
    link_to "Force confirmation", force_confirmation_admin_user_path(user), method: :put unless user.confirmed?
  end

  member_action :force_confirmation, method: :put do
    user = User.find(params[:id])
    user.confirm
    redirect_to admin_user_path(user)
  end
end

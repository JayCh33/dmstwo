ActiveAdmin.register AdminUser do
  menu priority: 8

  permit_params :email, :password, :password_confirmation, :superadmin

  index do
    selectable_column
    id_column
    column :email
    #column :superadmin
    column :created_at
    if superadmin?
      toggle_bool_column :superadmin
    else
      column :superadmin
    end
    #column :current_sign_in_at
    #column :sign_in_count
    if superadmin?
      actions
    end
  end

  filter :email, :as => :select
  filter :created_at
  filter :superadmin, :as => :check_boxes

  form do |f|
    if (f.object == current_admin_user) | superadmin?
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
      if superadmin?
        f.input :superadmin, as: :radio
      end
    end
    f.actions
  end
  end

  show do
    attributes_table do
      row :email
      row :superadmin
      if superadmin?
        attributes_table :title =>"Admin User Log Details" do
          row :created_at
          row :updated_at
        end
      end
    end

    active_admin_comments
  end

end

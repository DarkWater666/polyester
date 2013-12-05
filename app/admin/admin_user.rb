ActiveAdmin.register AdminUser do

  menu :priority => 15, :label => proc{ I18n.t('active_admin.admin_user')  }

  index do
    column :name
    column :login
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    #column :sign_in_count
    default_actions
  end

  filter :email
  filter :login
  filter :name

  form do |f|
    f.inputs "Детали админа" do
      f.input :name
      f.input :login
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
  controller do
    def permitted_params
      params.permit admin_user: [:name, :login, :email, :password, :password_confirmation]
    end
  end
end

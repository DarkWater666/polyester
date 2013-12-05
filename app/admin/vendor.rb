ActiveAdmin.register Vendor do
  menu :priority => 5, :label => proc{ I18n.t('active_admin.vendor') }, :parent => 'Информация'

  index do
    selectable_column
    id_column
    column 'Текст', :text do |vendor|
      raw vendor.text
    end
    column 'Создано', :created_at
    column 'Обновлено', :updated_at
    default_actions
  end

  show do
    attributes_table do
      row :id
      row :text do |vendor|
        raw vendor.text
      end
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

  form do |f|
    f.inputs 'Текст рубрики' do
      f.input :text, :as => :ckeditor
    end
    f.actions
  end

  controller do
    def permitted_params
      params.permit vendor: [:text]
    end
  end

end

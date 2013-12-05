ActiveAdmin.register Cloth do

  menu :priority => 7, :label => proc{ I18n.t('active_admin.cloths')  }, :parent => 'Продукция'

  index do
    selectable_column
    id_column
    column 'Заголовок', :title
    column 'Автор', :autor
    column 'Текст', :title do |cloth|
      truncate_html cloth.text, length: 250, omission: '...'
    end
    column 'Создано', :created_at
    column 'Обновлено', :updated_at
    default_actions
  end

  show do
    attributes_table do
      row :id
      row :title
      row :autor
      row :text do |cloth|
        cloth.text.html_safe
      end
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

  form do |f|
    f.inputs 'Текст новости' do
      f.input :title
      f.input :autor, :input_html => { :value => current_admin_user.name }
      f.input :text, :as => :ckeditor
    end
    f.actions
  end

  controller do
    def permitted_params
      params.permit cloth: [:text, :title, :autor]
    end
  end

end

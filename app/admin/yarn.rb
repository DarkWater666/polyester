ActiveAdmin.register Yarn do

  menu :priority => 6, :label => proc{ I18n.t('active_admin.yarns')  }, :parent => 'Продукция'

  index do
    selectable_column
    id_column
    column 'Заголовок', :title
    column 'Автор', :autor
    column 'Текст', :title do |yarn|
      truncate_html yarn.text, length: 250, omission: '...'
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
      row :text do |yarn|
        yarn.text.html_safe
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
      params.permit yarn: [:text, :title, :autor]
    end
  end

end

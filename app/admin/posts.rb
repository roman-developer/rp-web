ActiveAdmin.register Post do
  permit_params :name, :title, :content, :published_at

  scope :all
  scope :published
  scope :unpublished

  index do
    selectable_column
    id_column
    column :name
    column :title
    column :content
    column :published_at
    actions
  end
end

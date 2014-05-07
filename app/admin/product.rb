ActiveAdmin.register Product do
  config.per_page = 15

  index do
    column :title
    column :description
    default_actions
  end

  show do |ad|
    attributes_table do
      row :title
      row :product_type_id
      row :description
      row :image do
        image_tag(ad.image(:big))
      end
    end
  end

  filter :title
  filter :product_type

  form multipart: true do |f|
    f.inputs "products" do
      f.input :title
      f.input :description
      f.input :product_type_id, as: :select, collection: ProductType.all.collect{|t| p [t.name, t.id]}
      f.input :image, :required => false, :as => :file
    end
    f.actions
  end

end

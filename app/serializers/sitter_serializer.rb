class SitterSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :phone_number, :email, :bio, :availability
end

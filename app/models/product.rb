class Product < ActiveRecord::Base
  attr_accessible :description, :title, :image, :product_type_id
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, :product_type_id, presence: true

  belongs_to :product_type

  has_attached_file :image, :styles => {big: "637x419>", medium: "306x168>", thumb: "52x38>" },
                    :default_url => "/images/:style/missing.png"
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

end

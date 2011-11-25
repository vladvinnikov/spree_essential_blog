class PostTaxon < ActiveRecord::Base

  belongs_to :post
  belongs_to :taxon

  validates_associated :post
  validates_associated :taxon

end
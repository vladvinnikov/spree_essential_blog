Taxon.class_eval do
  has_many :post_taxons, :dependent => :destroy
  has_many :posts, :through => :post_taxons
  
end
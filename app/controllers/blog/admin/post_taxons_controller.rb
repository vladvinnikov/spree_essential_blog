class Blog::Admin::PostTaxonsController < Admin::BaseController
  
  before_filter :load_data
  
  def create
    position = @post.products.count
    @taxon = Taxon.find(params[:taxon_id])
    PostTaxon.create(:post_id => @post.id, :taxon_id => @taxon.id, :position => position)
    render :partial => "related_taxons_table", :locals => { :post => @post }, :layout => false 
  end
    
  def destroy
    @related = PostTaxon.find(params[:id])
    if @related.destroy
      render_js_for_destroy
    end
  end
    
  private
  
    def load_data
	  	@post = Post.find_by_path(params[:post_id])
    end

end
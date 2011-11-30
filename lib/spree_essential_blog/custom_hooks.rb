module SpreeEssentialBlog
  
  class CustomHooks < Spree::ThemeSupport::HookListener

    insert_after :admin_configurations_menu, 'blog/admin/configurations/disqus_config'
    
      insert_before :sidebar do
        "<li><%= link_to t('admin.shared.contents_tab.content'), posts_url %></li>"
      end
  
  end
  
end

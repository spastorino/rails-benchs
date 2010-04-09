class PostsController < ApplicationController
 
  def index
    send params[:method_name]
  end

  def show
    send params[:method_name]
  end

  private

    def render_empty_text
      render :text => ''
    end
  
    def partial
      render :partial => "collection", :object => Post.stub
    end
  
    def partial_10
      render :partial => "ten_partials"
    end
  
    def partial_100
      render :partial => "hundred_partials"
    end
 
    def partial_1000
      render :partial => "thousand_partials"
    end
  
    def coll_10
      render :partial => "collection", :collection => Post.all(10)
    end
  
    def coll_100
      render :partial => "collection", :collection => Post.all(100)
    end

    def coll_1000
      render :partial => "collection", :collection => Post.all(1000)
    end

    def uniq_10
      render :partial => Post.all(10)
    end

     def uniq_100
      render :partial => Post.all(100)
    end

    def uniq_1000
      render :partial => Post.all(1000)
    end
 
    def template_1
      render :template => "posts/template"
    end
end

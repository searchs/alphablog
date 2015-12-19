class ArticlesController < ApplicationController

def new 
    @article = Article.new
end

def index
    
end

def show 
   @article = Article.find(params[:id])
end

def edit
    
end
    
    
    def create 
        # render plain: params[:article].inspect
        @article = Article.new(article_params)
        if @article.save
           flash[:notice] = "Article was successfully created" 
            redirect_to article_path(@article)
        else
            render 'new'
        end
        
        # @article = Article.new(article_params)
        # @article.save
    # redirect_to article_show(@article)
    end
    
    
    private
    def article_params
       params.require(:article).permit(:title, :description) 
    end
    
end

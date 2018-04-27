class PagesController < ApplicationController

  def home

  end

  def about

  end

  def products
    @page = Page.all
  end

  def form
    @page = Page.new
  end

  def help

  end

  def create
    @page = Page.create(page_params)
    if @page.save
      flash[:success] = "You created a new post"
      redirect_to pages_products_path
    else
      flash[:danger] = "There was an error"
      render :form
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update(post_params)
      flash[:success] = "Post updated."
      redirect_to @page
    else
      flash[:danger] = "There was an error when updating."
      render :edit
    end
  end

  def show
    @page = Page.find(params[:id])
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to root_path
  end

  def logout

  end

  private def page_params
    params.require(:page).permit(:title, :body)
  end



end

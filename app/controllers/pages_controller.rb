# frozen_string_literal: true

class PagesController < ApplicationController
  def index
    redirect_to articles_path if current_user
    @articles = Article.last(5)
  end

  def about; end

  def contact
    @contact = Contact.new
  end
end

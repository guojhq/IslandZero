class SearchController < ApplicationController

  def search
    if params[:keyword].blank?
      flash.alert = t(:keyword_should_not_be_empty)
      redirect_to :back
      return
    end
    keyword = "%#{params[:keyword]}%"
    @topics = Topic.where("title LIKE ? OR introduction LIKE ?", keyword, keyword).where("id != parent_id")
  end

end

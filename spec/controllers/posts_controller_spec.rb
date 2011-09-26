require 'spec_helper'

describe PostsController do
  before :each do
    @posts = []
    for i in 0..10
      @posts << Factory.create(:post)
    end
  end

  it "should show specified post" do
    post :show, :id => @posts[0].id

    response.should be_success
    respond_to do |format|
      format.json { response.body.should eq({:title => @posts[0].name, :body => @posts[0].content, :author => @posts[0].author}) }
    end
  end
end

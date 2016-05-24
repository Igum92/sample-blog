require "spec_helper"


describe Comment do
  it { should belong_to :article }
end

describe "validation_length_of" do
 it "article without text is a valid" do

    article = create(:article, title: 'Lorem Ipsum', text: 'Bananza', author: 'Lusya')


    comments = article.comments.new()
    expect(comments.valid?).to eq false

  end
end
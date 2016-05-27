require "spec_helper"

feature "Article with comments Creation" do
  before (:all) do
    sign_up
  end

  scenario "allows user to create new article with comments" do
    visit new_article_path
    article = create(:article, title: 'Lorem Ipsum', text: 'Lorem ipsum dolor sit amet, nihil primis per ad. Dolore possim intellegam eos at, ad mei quot elitr accommodare. Lorem facilisi at sea. Summo doming maiorum ad has, at est veniam tantas. Et vix tation nusquam, te mea docendi dissentiet adversarium. Qui brute facer delectus in, mea id assum diceret.')

    comments = article.comments.new("Hello!")
    expect(comments.body).to eq "Hello!"
  end

end
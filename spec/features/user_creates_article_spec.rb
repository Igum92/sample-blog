require "spec_helper"

feature "Article Creation" do
  before (:all) do
    sign_up
  end

  scenario "allows user to visit new article page" do
    visit new_article_path
    expect(page).to have_content I18n.t ('articles.new_article')
  
  end

  scenario "allows user to create new article" do
    visit new_article_path
    article = create(:article, title: 'Lorem Ipsum', text: 'Lorem ipsum dolor sit amet, nihil primis per ad. Dolore possim intellegam eos at, ad mei quot elitr accommodare. Lorem facilisi at sea. Summo doming maiorum ad has, at est veniam tantas. Et vix tation nusquam, te mea docendi dissentiet adversarium. Qui brute facer delectus in, mea id assum diceret.')

    expect(article.subject).to eq 'Lorem Ipsum'
  end
end
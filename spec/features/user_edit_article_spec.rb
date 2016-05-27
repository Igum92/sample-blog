require "spec_helper"

feature "Article Creation and Edit" do
  before (:all) do
    sign_up
  end

  scenario "allows user to edit new article title" do
    visit new_article_path
    article = create(:article, title: 'Lorem Ipsum', text: 'Lorem ipsum dolor sit amet, nihil primis per ad. Dolore possim intellegam eos at, ad mei quot elitr accommodare. Lorem facilisi at sea. Summo doming maiorum ad has, at est veniam tantas. Et vix tation nusquam, te mea docendi dissentiet adversarium. Qui brute facer delectus in, mea id assum diceret.')

    visit edit_article_path(article.id)
    article.update(title: 'Hello!')

    expect(article.subject).to eq 'Hello!'
  end

scenario "allows user to edit new article text" do
  visit new_article_path
  article = create(:article, title: 'Lorem Ipsum', text: 'Lorem ipsum dolor sit amet, nihil primis per ad. Dolore possim intellegam eos at, ad mei quot elitr accommodare. Lorem facilisi at sea. Summo doming maiorum ad has, at est veniam tantas. Et vix tation nusquam, te mea docendi dissentiet adversarium. Qui brute facer delectus in, mea id assum diceret.')

  visit edit_article_path(article.id)
  article.update(text: 'Pasha voznikaet mnogo')

  expect(article.text).to eq 'Pasha voznikaet mnogo'
end

end
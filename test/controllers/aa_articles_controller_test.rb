require "test_helper"

class AaArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aa_article = aa_articles(:one)
  end

  test "should get index" do
    get aa_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_aa_article_url
    assert_response :success
  end

  test "should create aa_article" do
    assert_difference('AaArticle.count') do
      post aa_articles_url, params: { aa_article: { body: @aa_article.body, title: @aa_article.title } }
    end

    assert_redirected_to aa_article_url(AaArticle.last)
  end

  test "should show aa_article" do
    get aa_article_url(@aa_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_aa_article_url(@aa_article)
    assert_response :success
  end

  test "should update aa_article" do
    patch aa_article_url(@aa_article), params: { aa_article: { body: @aa_article.body, title: @aa_article.title } }
    assert_redirected_to aa_article_url(@aa_article)
  end

  test "should destroy aa_article" do
    assert_difference('AaArticle.count', -1) do
      delete aa_article_url(@aa_article)
    end

    assert_redirected_to aa_articles_url
  end
end

require "test_helper"

class AArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @a_article = a_articles(:one)
  end

  test "should get index" do
    get a_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_a_article_url
    assert_response :success
  end

  test "should create a_article" do
    assert_difference('AArticle.count') do
      post a_articles_url, params: { a_article: { body: @a_article.body, title: @a_article.title } }
    end

    assert_redirected_to a_article_url(AArticle.last)
  end

  test "should show a_article" do
    get a_article_url(@a_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_a_article_url(@a_article)
    assert_response :success
  end

  test "should update a_article" do
    patch a_article_url(@a_article), params: { a_article: { body: @a_article.body, title: @a_article.title } }
    assert_redirected_to a_article_url(@a_article)
  end

  test "should destroy a_article" do
    assert_difference('AArticle.count', -1) do
      delete a_article_url(@a_article)
    end

    assert_redirected_to a_articles_url
  end
end

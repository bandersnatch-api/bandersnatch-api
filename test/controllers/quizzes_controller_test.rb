require "test_helper"

class QuizzesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quiz = quizzes(:one)
  end

  test "should get index" do
    get quizzes_url, as: :json
    assert_response :success
  end

  test "should create quiz" do
    assert_difference('Quiz.count') do
      post quizzes_url, params: { quiz: { answer1: @quiz.answer1, answer2: @quiz.answer2, answer3: @quiz.answer3, answer4: @quiz.answer4, correct_answer: @quiz.correct_answer, question: @quiz.question } }, as: :json
    end

    assert_response 201
  end

  test "should show quiz" do
    get quiz_url(@quiz), as: :json
    assert_response :success
  end

  test "should update quiz" do
    patch quiz_url(@quiz), params: { quiz: { answer1: @quiz.answer1, answer2: @quiz.answer2, answer3: @quiz.answer3, answer4: @quiz.answer4, correct_answer: @quiz.correct_answer, question: @quiz.question } }, as: :json
    assert_response 200
  end

  test "should destroy quiz" do
    assert_difference('Quiz.count', -1) do
      delete quiz_url(@quiz), as: :json
    end

    assert_response 204
  end
end

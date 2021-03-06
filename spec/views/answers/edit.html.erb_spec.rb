require 'rails_helper'

RSpec.describe "answers/edit", type: :view do
  before(:each) do
    @answer = assign(:answer, Answer.create!(
      :description => "MyText",
      :code => "MyText",
      :question_id => 1
    ))
  end

  it "renders the edit answer form" do
    render

    assert_select "form[action=?][method=?]", answer_path(@answer), "post" do

      assert_select "textarea[name=?]", "answer[description]"

      assert_select "textarea[name=?]", "answer[code]"

      assert_select "input[name=?]", "answer[question_id]"
    end
  end
end

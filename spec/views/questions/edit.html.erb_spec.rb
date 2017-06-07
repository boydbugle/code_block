require 'rails_helper'

RSpec.describe "questions/edit", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :title => "MyString",
      :description => "MyText",
      :code => "MyText"
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "input[name=?]", "question[title]"

      assert_select "textarea[name=?]", "question[description]"

      assert_select "textarea[name=?]", "question[code]"
    end
  end
end

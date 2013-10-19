require 'spec_helper'

describe "Tasks" do
  describe "GET /tasks" do
    it "displays tasks" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      @task = FactoryGirl.create :task, name: "my task"
      visit tasks_path
      #response.status.should be(200)
      page.should have_content("my task")
    end
  end
end

require 'rails_helper'

RSpec.describe Book do
  it 'can verify that it exists' do
    book = Book.new({
                    :isbn=>["9812582622", "9789812582621"],
                    :title=>"Insight Fleximap Denver, CO (Insight Fleximaps)",
                    :publisher=>["American Map Corporation"]
                    }, 35990)

    expect(book).to be_an_instance_of(Book)
  end
end

require 'rails_helper'

RSpec.describe Snippet, type: :model do
  # Ensures Snippet belongs to SnippetCategory
  it { should belong_to(:snippet_category) }
  # Validates columns before saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:body) }
end

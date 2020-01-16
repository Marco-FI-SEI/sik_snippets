require 'rails_helper'

RSpec.describe SnippetCategory, type: :model do
  # ensure one-to-many relationship with Snippet
  it { should have_many(:snippets).dependent(:destroy) }
  # Validation columns before saving
  it { should validate_presence_of(:title) }
end

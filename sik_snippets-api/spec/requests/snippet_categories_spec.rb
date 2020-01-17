# require "rails_helper"

# RSpec.describe "snippet_categories API", type: :request do
#   # initialize test data
#   let!(:snippet_categories) { create_list(:snippet_category, 10) }
#   let(:snippet_category_id) { snippet_categories.first.id }

#   # Test suite for GET /snippet_categories
#   describe "GET /snippet_categories" do
#     # make HTTP get request before each example
#     before { get "/snippet_categories" }

#     it "returns snippet_categories" do
#       # Note `json` is a custom helper to parse JSON responses
#       expect(json).not_to be_empty
#       expect(json.size).to eq(10)
#     end

#     it "returns status code 200" do
#       expect(response).to have_http_status(200)
#     end
#   end

#   # Test suite for GET /snippet_categories/:id
#   describe "GET /snippet_categories/:id" do
#     before { get "/snippet_categories/#{snippet_category_id}" }

#     context "when the record exists" do
#       it "returns the snippet_category" do
#         expect(json).not_to be_empty
#         expect(json["id"]).to eq(snippet_category_id)
#       end

#       it "returns status code 200" do
#         expect(response).to have_http_status(200)
#       end
#     end

#     context "when the record does not exist" do
#       let(:snippet_category_id) { 100 }

#       it "returns status code 404" do
#         expect(response).to have_http_status(404)
#       end

#       it "returns a not found message" do
#         expect(response.body).to match("{\"message\":\"Could not find Snippet Category\"}")
#       end
#     end
#   end

#   describe "POST /snippet_categories" do
#     let(:valid_attributes) { { title: "JavaScript" } }

#     context "when the request is valid" do
#       before { post "/snippet_categories", params: valid_attributes }

#       it "creates a snippet_category" do
#         expect(json["title"]).to eq("JavaScript")
#       end

#       it "returns status code 201" do
#         expect(response).to have_http_status(201)
#       end
#     end

#     context "when the request is invalid" do
#       before { post "/snippet_categories", params: { title: "" } }

#       it "returns status code 422" do
#         expect(response).to have_http_status(422)
#       end

#       it "returns a validation failure message" do
#         expect(response.body).to match(/Validation failed: Title can't be blank/)
#       end
#     end
#   end

#   describe "PUT /snippet_categories/:id" do
#     let(:valid_attributes) { { title: "Angular" } }

#     context "when the record exists" do
#       before { put "/snippet_categories/#{snippet_category_id}", params: valid_attributes }

#       it "updates the record" do
#         expect(response.body).to be_empty
#       end

#       it "returns status code 204" do
#         expect(response).to have_http_status(204)
#       end
#     end
#   end

#   describe "DELETE /snippet_categories/:id" do
#     before { delete "/snippet_categories/#{snippet_category_id}" }

#     it "returns status code 204" do
#       expect(response).to have_http_status(204)
#     end
#   end
# end

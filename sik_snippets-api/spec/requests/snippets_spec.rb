# require "rails_helper"

# RSpec.describe "snippets API" do
#   let!(:snippet_category) { create(:snippet_category) }
#   let!(:snippets) { create_list(:snippet, 20, snippet_category_id: snippet_category.id) }
#   let(:snippet_category_id) { snippet_category.id }
#   let(:id) { snippets.first.id }

#   describe "GET /snippet_categories/:snippet_category_id/snippets" do
#     before { get "/snippet_categories/#{snippet_category_id}/snippets" }

#     context "when snippet_category exists" do
#       it "returns status code 200" do
#         expect(response).to have_http_status(200)
#       end

#       it "returns all snippet_category snippets" do
#         expect(json.size).to eq(20)
#       end
#     end

#     context "when snippet_category does not exist" do
#       let(:snippet_category_id) { 0 }

#       it "returns status code 404" do
#         expect(response).to have_http_status(404)
#       end

#       it "returns a not found message" do
#         expect(response.body).to match(/Couldn't find snippet_category/)
#       end
#     end
#   end

#   describe "GET /snippet_categories/:snippet_category_id/snippets/:id" do
#     before { get "/snippet_categories/#{snippet_category_id}/snippets/#{id}" }

#     context "when snippet_category snippet exists" do
#       it "returns status code 200" do
#         expect(response).to have_http_status(200)
#       end

#       it "returns the snippet" do
#         expect(json["id"]).to eq(id)
#       end
#     end

#     context "when snippet_category snippet does not exist" do
#       let(:id) { 0 }

#       it "returns status code 404" do
#         expect(response).to have_http_status(404)
#       end

#       it "returns a not found message" do
#         expect(response.body).to match(/Couldn't find snippet/)
#       end
#     end
#   end

#   describe "POST /snippet_categories/:snippet_category_id/snippets" do
#     let(:valid_attributes) { { title: "Visit Narnia", body: "Some code here" } }

#     context "when request attributes are valid" do
#       before { post "/snippet_categories/#{snippet_category_id}/snippets", params: valid_attributes }

#       it "returns status code 201" do
#         expect(response).to have_http_status(201)
#       end
#     end

#     context "when an invalid request" do
#       before { post "/snippet_categories/#{snippet_category_id}/snippets", params: {} }

#       it "returns status code 422" do
#         expect(response).to have_http_status(422)
#       end

#       it "returns a failure message" do
#         expect(response.body).to match(/Validation failed: Name can't be blank/)
#       end
#     end
#   end

#   describe "PUT /snippet_categories/:snippet_category_id/snippets/:id" do
#     let(:valid_attributes) { { title: "Recursion" } }

#     before { put "/snippet_categories/#{snippet_category_id}/snippets/#{id}", params: valid_attributes }

#     context "when snippet exists" do
#       it "returns status code 204" do
#         expect(response).to have_http_status(204)
#       end

#       it "updates the snippet" do
#         updated_snippet = snippet.find(id)
#         expect(updated_snippet.name).to match(/Recursion/)
#       end
#     end

#     context "when the snippet does not exist" do
#       let(:id) { 0 }

#       it "returns status code 404" do
#         expect(response).to have_http_status(404)
#       end

#       it "returns a not found message" do
#         expect(response.body).to match(/Couldn't find snippet/)
#       end
#     end
#   end

#   describe "DELETE /snippet_categories/:id" do
#     before { delete "/snippet_categories/#{snippet_category_id}/snippets/#{id}" }

#     it "returns status code 204" do
#       expect(response).to have_http_status(204)
#     end
#   end
# end

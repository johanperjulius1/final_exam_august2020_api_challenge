RSpec.describe "POST /api/articles/comments", type: :request do
  let(:user) { create(:user) }
  let(:headers) { { HTTP_ACCEPT: "application/json" } }

  describe "successfully" do
    before do
      post "/api/articles/comments",
           params: {
             articleId: "1",
           },
           headers: headers
    end

    it "should respond with a 200 status" do
      expect(response.status).to eq 200
    end

    it "should respond with a success message" do
      expect(response_json["message"]).to eq "Thank you for your comment!"
    end
  end
end



shared_examples "requires sign in" do
  it "redirects to the sign in page" do
    clear_current_user
    action
    expect(response).to redirect_to sign_in_path
  end
end

shared_examples "tokenable" do
  describe "#generate_token" do
    it "generates a random token" do
      object.generate_token
      object.save
      expect(object.token).to be_present
    end
  end
end

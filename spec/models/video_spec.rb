require 'spec_helper'

describe Video do
  it { should belong_to(:category) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }

  describe "search_by_title" do
    it "returns an empty array if there is no match" do
      futurama = Video.create(title: "Futurama", description: "Space!")
      back_to_future = Video.create(title: "Back to Future", description: "Time Travel!")
      expect(Video.search_by_title("hello")).to eq([])
    end

    it "returns an array of one video for an exact match" do
      futurama = Video.create(title: "Futurama", description: "Space!")
      back_to_future = Video.create(title: "Back to Future", description: "Time Travel!")
      matches = Video.search_by_title("Futurama")
      expect(matches).to eq([futurama])
    end

    it "returns an array of one video for a partial match" do
      futurama = Video.create(title: "Futurama", description: "Space!")
      back_to_future = Video.create(title: "Back to Future", description: "Time Travel!")
      matches = Video.search_by_title("urama")
      expect(matches).to eq([futurama])
    end

    it "returns an array of all matches ordered by created_at" do
      futurama = Video.create(title: "Futurama", description: "Space!", created_at: 1.day.ago)
      back_to_future = Video.create(title: "Back to Future", description: "Time Travel!")
      matches = Video.search_by_title("Futur")
      expect(matches).to eq([back_to_future, futurama])
    end

    it "returns an empty array for a search with an empty string" do
      futurama = Video.create(title: "Futurama", description: "Space!", created_at: 1.day.ago)
      back_to_future = Video.create(title: "Back to Future", description: "Time Travel!")
      matches = Video.search_by_title("")
      expect(matches).to eq([])
    end
  end
end
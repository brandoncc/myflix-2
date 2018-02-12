require 'spec_helper'

describe User do
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:full_name) }
  it { should validate_uniqueness_of(:email) }
  it { should have_many(:queue_items).order("position") }
  it { should have_many(:reviews).order("created_at DESC")}

  describe '#queued_videos?' do
    it 'returns true when the user queued the video' do
      user = Fabricate(:user)
      video = Fabricate(:video)
      Fabricate(:queue_item, user: user, video: video)
      user.queued_video?(video).should be true
    end

    it 'returns false when the user hasn\'t queue the video' do
      user = Fabricate(:user)
      video = Fabricate(:video)
      user.queued_video?(video).should be false
    end
  end
end

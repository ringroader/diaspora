require 'spec_helper'

describe Jobs::ProcessPhoto do
  it 'calls process on the photo' do
    photo = mock()
    photo.should_receive(:process)
    Photo.should_receive(:find).with(1).and_return(photo)
    Jobs::ProcessPhoto.perform(1)
  end
end

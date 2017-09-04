# rubocop:disable Metrics/LineLength
# == Schema Information
#
# Table name: dramas
#
#  id                        :integer          not null, primary key
#  abbreviated_titles        :string           is an Array
#  age_rating                :integer
#  age_rating_guide          :string
#  average_rating            :decimal(5, 2)
#  canonical_title           :string           default("en_jp"), not null
#  country                   :string           default("ja"), not null
#  cover_image_content_type  :string
#  cover_image_file_name     :string
#  cover_image_file_size     :integer
#  cover_image_meta          :text
#  cover_image_processing    :boolean
#  cover_image_top_offset    :integer          default(0), not null
#  cover_image_updated_at    :datetime
#  end_date                  :date
#  episode_count             :integer
#  episode_length            :integer
#  favorites_count           :integer          default(0), not null
#  popularity_rank           :integer
#  poster_image_content_type :string
#  poster_image_file_name    :string
#  poster_image_file_size    :integer
#  poster_image_meta         :text
#  poster_image_updated_at   :datetime
#  rating_frequencies        :hstore           default({}), not null
#  rating_rank               :integer
#  slug                      :string           not null, indexed
#  start_date                :date
#  subtype                   :integer
#  synopsis                  :text
#  tba                       :string
#  titles                    :hstore           default({}), not null
#  user_count                :integer          default(0), not null
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  youtube_video_id          :string
#
# Indexes
#
#  index_dramas_on_slug  (slug)
#
# rubocop:enable Metrics/LineLength

require 'rails_helper'

RSpec.describe Drama, type: :model do
  subject { build(:drama) }
  include_examples 'media'
  include_examples 'episodic'
  include_examples 'age_ratings'
end

class Tombstone < ApplicationRecord
  validates_presence_of :acquired_text, :year, :conducted_text

  has_attached_file :acquiror_logo, styles: { medium: "550x215>" }
  has_attached_file :acquired_logo, styles: { medium: "550x150>" }

  validates_attachment_content_type :acquiror_logo, :acquired_logo, content_type: /\Aimage\/.*\z/

end
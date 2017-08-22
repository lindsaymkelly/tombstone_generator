class Tombstone < ApplicationRecord
  validates_presence_of :acquired_text, :year, :conducted_text, :representation

  has_attached_file :acquiror_logo, styles: { medium: "380x150>", thumb: "100x100>" }
  has_attached_file :acquired_logo, styles: { medium: "380x100>", thumb: "100x100>" }

  validates_attachment_content_type :acquiror_logo, :acquired_logo, content_type: /\Aimage\/.*\z/

  validates_attachment :acquiror_logo, :acquired_logo, :presence => { :message => "is required" }

end
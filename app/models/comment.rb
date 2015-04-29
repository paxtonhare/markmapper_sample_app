class Comment
  include MarkMapper::EmbeddedDocument

  key :commenter, String
  key :body, String
  timestamps!

  embedded_in :article

end

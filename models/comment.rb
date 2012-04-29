
class Comment
  include DataMapper::Resource
  property :id, Serial
  property :name, String, :required => true
  property :body, String, :required => true
  property :created_at, Time, :default => lambda{Time.now}

  def to_s
    "[#{name}] #{body} - #{created_at}"
  end
end

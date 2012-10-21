
class Comment
  include DataMapper::Resource
  property :id, Serial
  property :name, String, :required => true
  property :body, String, :required => true
  property :created_at, Time, :default => lambda{|r,p|Time.now}

  def to_s
    "[#{name}] #{body} - #{created_at}"
  end

  def self.get_latests(num=10)
    self.all(:order => [:id.desc], :limit => num)
  end
end

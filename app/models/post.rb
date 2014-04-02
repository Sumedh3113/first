class Post < ActiveRecord::Base
  has_many :comments ,dependent: :destroy
  has_attached_file :image , :styles =>{ :small => "150x150>" },
                    :url => "F:\xampp\htdocs\first\app\assets\images:id\:style\:basename.:extention",
                    :path =>":rails_root\public\F:\xampp\htdocs\first\app\assets\images:id\:style\:basename.:extention"
  acts_as_taggable
  has_many :tagging
 

#def self.tagged_with(name)
 # Tag.find_by_name!(name).article
#end

#def self.tag_counts
 # Tag.select("Tags.*,count(tagging.tad_id) as count")
  #joins.(:taggings).group("taggings.tag_id")
  #end

#def tag_list
 # tags.map(&:name).join(",")
#end

#def tag_list=(name)
 # self.tags=names.split(",").map do |n|
#Tag.where(name: n.strip).first_or_create
#end
  
 # acts_as_taggable
  
  validates :title ,:text ,:presence =>true
  validates :title ,:length =>{:minimum =>2}
  validates :title ,:uniqueness =>{:message => "already taken"}
end

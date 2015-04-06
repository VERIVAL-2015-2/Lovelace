class Product < ActiveRecord::Base

	validates :code, presence: true,
					 numericality: true, 
	                 uniqueness: true

	validates :name, presence: true, 
	                 length: {maximum:  100}

	validates :price, presence: true, 
	                  numericality: true

	validates :stock, presence: true, 
	                  numericality: {only_integer: true }

	validates :description, presence: true, 
	                        length: {maximum:  400}

	validates :details, presence: true, 
	                    length: {maximum:  400}

	has_attached_file :image, :styles => { :medium => "200x200>", :thumb => "120x90#"},
					  :path => ':rails_root/public/images/products/:id-:basename-:style.:extension',
                  	  :url => '/images/products/:id-:basename-:style.:extension'

    validates_attachment :image, 
    					  presence: true, 
    					  content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end

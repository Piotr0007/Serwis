class Artykul < ActiveRecord::Base

	belongs_to :strona

	has_attached_file :zalacznik,
	 				  :styles => { :medium => "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :zalacznik,
  									:content_type=> /^image\/(png|gif|jpg)/,
  									:messege =>'---akceptuje tylko pliki PNG GIF i JPG---'

  validates_attachment_size :zalacznik,
  									:in => 0..850.kilobytes,
  									:message =>'---za duży plik rozmiar to 850 kB---'



	scope :widoczny, lambda{where(:widoczny => true)}
	scope :niewidoczny, lambda{where(:widoczny => false)}
	scope :sortuj, lambda{order("artykuls.pozycja ASC")}
	scope :najnowszy, lambda{order("artykuls.created_at DESC")}

end

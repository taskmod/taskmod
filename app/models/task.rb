class Task < ActiveRecord::Base
  belongs_to :category
  belongs_to :partner
  
   validates_presence_of :description
   validates_presence_of :status
   validates_presence_of :partner
   validates_presence_of :category
   
   def self.search(search)
     if search
      Task.where("description LIKE ?", "%#{search}%")
    else
      search= "pendente"
      Task.where("status LIKE ?", search)
    end
   end
end

# coding: utf-8
class Post < ActiveRecord::Base
  acts_as_taggable
  #versioned
  attr_accessible :titulo, :resumen, :texto, :categoria_id, :tag_list
  belongs_to :user
  belongs_to :categoria
  has_many :comentarios
  has_many :figuras
  validates_presence_of :titulo, :texto
  
  scope :libres, where("categoria_id <> 2")

  def self.per_page
    15
  end
    
  def to_s
    titulo
  end

  def to_param
    "#{id}-#{to_s.parameterize}"
  end
  
end

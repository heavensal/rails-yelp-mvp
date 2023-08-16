class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  
  validates :rating, numericality: { only_integer: true }
  validates :rating, comparison: { greater_than_or_equal_to: 0 }
  validates :rating, comparison: { less_than_or_equal_to: 5 }

end

# FAIT Un restaurant doit avoir un nom, une adresse et une catégorie.
# FAIT La catégorie du restaurant doit appartenir à cette liste fixe : ["chinese", "italian", "japanese", "french", "belgian"].
# FAIT Quand un restaurant est supprimé, tous ses avis doivent aussi être supprimés.
# FAIT Un avis doit appartenir à un restaurant.
# FAIT Un avis doit avoir un contenu.
# FAIT Un avis doit avoir une note.
# La note d’un avis doit être un nombre entre 0 et 5.
# La note d’un avis doit être un entier. Par exemple, un avis avec une note de 2,5 doit être invalide !
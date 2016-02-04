require './item'
require './items/cat'
require './store'



snoes = Item.new
snoes.name = 'SNOES'
pluis = Cat.new
pluis.name = 'Pluis'
petStore = Store.new
petStore.add_cat snoes
petStore.add_cat pluis
petStore.inventory

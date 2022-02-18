json.pokemon do 
    json.set! @pokemon.id do
        json.extract! @pokemon, :id, :name, :attack, :defense, :poke_type, :image_url
    end  
end

json.moves do 
    json.set! @pokemon.id do
        @pokemon.moves.each do |move|
            json.extract! move, :id, :name
        end 
    end
end 

json.items do 
    json.set! @pokemon.id do
        @pokemon.items.each do |item|
            json.extract! item, :id, :pokemon_id, :name, :price, :happiness, :image_url
        end 
    end
end
 


# json.extract! @pokemon, :id, :name, :attack, :defense



# json.tea do 
#     json.extract! @tea, :id, :flavor, :amount, :description, :transaction_ids
# end 

# json.transactions do 
#     @tea.transactions.each do |transaction|
#         json.set! transaction.id do 
#             json.extract! transaction, :id, :quantity, :created_at, :tea_id
#             json.customer transaction.user.username
#         end
#     end
# end 
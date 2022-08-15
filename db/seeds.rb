Strain.destroy_all
Wine.destroy_all
Blend.destroy_all
User.destroy_all

strains = [
    {name: 'Carmener', origin: 'Aconcagua'},
    {name: 'Brut', origin: 'Colchagua'},
    {name: 'Cabernet Sauvignon', origin: 'Maipo'},
    {name: 'Cabernet Franc', origin: 'Maule'},
    {name: 'Carignan', origin: 'Maule'},
    {name: 'Chardonnay', origin: 'Casablanca'},
    {name: 'Chenin Blanc', origin: 'Maule'},
    {name: 'Cinsault', origin: 'Itata'},
    {name: 'Morvedre', origin: 'Mendoza'},
    {name: 'Malbec', origin: 'Maule'},
    {name: 'Merlot', origin: 'Maipo'},
    {name: 'Tempranillo', origin: 'Curicó'},
    {name: 'Syrah', origin: 'Maule'},
    {name: 'Sauvignon Blanc', origin: 'Colchagua'}
]

strains.each do |strain|
    Strain.create(name: strain[:name],
                  origin: strain[:origin]
    )

end

wines = [
    {name: 'Trío Reserva Merlot', wineyard: 'Emiliana', year: 2018, grade: 78},
    {name: 'Marqués de Casa', wineyard: 'Concha y Toro', year: 2125, grade: 65},
    {name: 'Tamaya', wineyard: 'Casa Tamaya', year: 2014, grade: 89},
    {name: 'The Blend Collection', wineyard: 'Errázuriz', year: 2012, grade: 72},
    {name: 'Cono Sur', wineyard: 'Cono Sur', year: 2010, grade: 95},
    {name: 'Ensamblaje Blanco', wineyard: 'Clos de Lolol', year: 2019, grade: 90},
    {name: 'Trío Reserva Sauvignon', wineyard: 'Concha y Toro', year: 2004, grade: 87}
]

wines.each do |wine|
    Wine.create(name: wine[:name],
                wineyard: wine[:wineyard],
                year: wine[:year],
                grade: wine[:grade]
    )
end

blends = [
    {wine_id: 7, strain_id: 2, percentage: 54},
    {wine_id: 7, strain_id: 3, percentage: 41},
    {wine_id: 7, strain_id: 12, percentage: 5},
    {wine_id: 1, strain_id: 10, percentage: 45},
    {wine_id: 1, strain_id: 1, percentage: 52},
    {wine_id: 1, strain_id: 2, percentage: 3},
    {wine_id: 2, strain_id: 5, percentage: 80},
    {wine_id: 2, strain_id: 1, percentage: 20},
    {wine_id: 3, strain_id: 1, percentage: 60},
    {wine_id: 3, strain_id: 11, percentage: 40},
    {wine_id: 4, strain_id: 4, percentage: 32},
    {wine_id: 4, strain_id: 8, percentage: 28},
    {wine_id: 4, strain_id: 12, percentage: 40},
    {wine_id: 5, strain_id: 3, percentage: 22},
    {wine_id: 5, strain_id: 1, percentage: 54},
    {wine_id: 5, strain_id: 12, percentage: 24},
    {wine_id: 6, strain_id: 5, percentage: 30},
    {wine_id: 6, strain_id: 13, percentage: 70}
]

blends.each do |blend|
    Blend.create(wine_id: blend[:wine_id],
                 strain_id: blend[:strain_id],
                 percentage: blend[:percentage]
    )

end

users = [
    {email: 'maloreto@user.com', password: '123456', admin: false},
    {email: 'maloreto@admin.com', password: '123456', admin: true}
]

users.each do |user|
    User.create(email: user[:email],
                password: user[:password],
                admin: user[:admin]
    )
end

experts = [
    {name: "Marcelo Retamal", age: 47 , nationality: "chilena", workplace: "Revista La Cava", editor: true, writer: true, reviwer: false},
    {name: "Claudia Puentes", age: 45 , nationality: "francesa", workplace: "Revista Vins", editor: false, writer: true, reviwer: true},
    {name: "Fernando Celis", age: 55 , nationality: "chilena", workplace: "Vinos y más", editor: true, writer: false, reviwer: true},
    {name: "Catalina Moraga", age: 37 , nationality: "canadiense", workplace: "Revista La Cava", editor: true, writer: false, reviwer: true},
    {name: "Andrea Palacios", age: 51 , nationality: "chilena", workplace: "Revista el Valle", editor: true, writer: true, reviwer: false},
    {name: "Cristóbal Rodríguez", age: 40 , nationality: "chilena", workplace: "Placeres de Reserva", editor: false, writer: true, reviwer: false},
    {name: "Juan Pedro Matamala", age: 57 , nationality: "chilena", workplace: "Revista Gran Bodega", editor: true, writer: false, reviwer: false}
]

experts.each do |expert|
    Expert.create(  name: expert[:name],
                    age: expert[:age],
                    nationality: expert[:nationality],
                    workplace: expert[:workplace],
                    editor: expert[:editor],
                    writer: expert[:writer],
                    reviewer: expert[:reviewer]
                  )
end
Strain.destroy_all
Wine.destroy_all
Blend.destroy_all

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
    {name: 'Trío Reserva Merlot', wineyard: 'Emiliana', year: 2018},
    {name: 'Marqués de Casa', wineyard: 'Concha y Toro', year: 2125},
    {name: 'Tamaya', wineyard: 'Casa Tamaya', year: 2014},
    {name: 'The Blend Collection', wineyard: 'Errázuriz', year: 2012},
    {name: 'Cono Sur', wineyard: 'Cono Sur', year: 2010},
    {name: 'Ensamblaje Blanco', wineyard: 'Clos de Lolol', year: 2019},
    {name: 'Trío Reserva Sauvignon', wineyard: 'Concha y Toro', year: 2004}
]

wines.each do |wine|
    Wine.create(name: wine[:name],
                wineyard: wine[:wineyard],
                year: wine[:year]
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
Strain.destroy_all

strains = [
    {name: 'Carmener', origin: 'Aconcagua'},
    {name: 'Brut', origin: 'Colchagua'},
    {name: 'Cabernet Sauvignon', origin: 'Maipo'},
    {name: 'Carignan', origin: 'Maule'},
    {name: 'Chardonnay', origin: 'Casablanca'},
    {name: 'Chenin Blanc', origin: 'Maule'},
    {name: 'Cinsault', origin: 'Itata'},
    {name: 'Demisec', origin: 'Mendoza'},
    {name: 'Malbec', origin: 'Maule'},
    {name: 'Merlot', origin: 'Maipo'},
    {name: 'Pinot Noir', origin: 'Cachapoal'}
]

strains.each do |strain|
    Strain.create(name: strain[:name],
                        origin: strain[:origin]
    )

end
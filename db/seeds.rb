# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
amoebas = Amoeba.create([{name: "jim", generation: 1}, {name: "joe", generation: 1}, {name: "bill", generation: 1}])

amoeba1 = Amoeba.create(name: "jim", generation: 1)
amoeba1.build_talent
amoeba1.talent.name = "blackflips"
amoeba1.talent.save

amoeba2 = Amoeba.create(name: "joe", generation: 1)
amoeba2.build_talent
amoeba2.talent.name = "contorionist"
amoeba2.talent.save

act1 = Act.create(name: "the greatest show on earth", date: "12/12/2014")
act2 = Act.create(name: "the second best show on earth", date: "12/12/2014")

join_table1 = AmoebaAct.create(amoeba: amoeba1, act: act1)
join_table2 = AmoebaAct.create(amoeba: amoeba2, act: act1)
france = Country.find_by_name("France")
england = Country.find_by_name("Royaume-Uni")
usa = Country.find_by_name("États-Unis")
australia = Country.find_by_name("Australie")
new_zealand = Country.find_by_name("Nouvelle-Zélande")
canada = Country.find_by_name("Canada")
mexico = Country.find_by_name("Mexique")

# *******************************************************
# 						  Léon 
# *******************************************************

d1 = Director.create(fullname: "Luc Besson", birth: "1959-03-18", bio: "Luc Besson passe son enfance dans les îles avec ses parents, professeurs de plongée au Club Méditerranée. Il veut suivre leurs traces, mais un accident de plongée l'en empêche. Le jeune homme se tourne alors vers le cinéma : il est stagiaire sur plusieurs tournages dont ceux de Loulou et de Deux lions au soleil. Il est également assistant sur Les Bidasses aux grandes manoeuvres et réalisateur de seconde équipe sur Le Grand carnaval. Après avoir mis en scène le court-métrage L'Avant dernier (1981), Luc Besson fonde avec Pierre Jolivet la maison de production Les Films du loup. C'est via cette société qu'il réalise en 1983 le film de science-fiction Le Dernier combat, nommé aux César. Il enchaîne, deux ans plus tard, avec le polar moderne Subway, un projet laissé à l'abandon en 1981. Dans ce film, les sous-sols du métro parisien sont le théâtre des aventures de deux stars de l'époque : Christophe Lambert et Isabelle Adjani.", image: "directors/luc_besson.jpg")
d1.countries << france

w1 = Writer.create(fullname: "Luc Besson")
w1.countries << france

a1 = Actor.create(fullname: "Jean Reno")
a1.countries << france
a2 = Actor.create(fullname: "Gary Oldman")
a2.countries << england
a3 = Actor.create(fullname: "Natalie Portman")
a3.countries << usa
a4 = Actor.create(fullname: "Danny Aiello")
a4.countries << usa

m1 = Movie.create(title_vo: "The professional", title_vf: "Léon", year: "1994", duration: "1h 43min", quality: "1080p", language: "MULTI", bw: 0, synopsis: "Un tueur à gages répondant au nom de Léon prend sous son aile Mathilda, une petite fille de douze ans, seule rescapée du massacre de sa famille. Bientôt, Léon va faire de Mathilda une \"nettoyeuse\", comme lui. Et Mathilda pourra venger son petit frère...", image: 'movies/leon.jpg')
m1.directors << [d1]
m1.writers << [w1]
m1.actors << [a1, a2, a3, a4]
m1.countries << france

puts 'Léon was created'

# *******************************************************
# 					The truman show
# *******************************************************

d2 = Director.create(fullname: "Peter Weir", birth: "1944-08-21", bio: "Après avoir bouclé ses études dans son Australie natale, Peter Weir s'envole pour Londres où il rédige et interprète des sketches satiriques en compagnie de sa compagne. De retour sur ses terres au milieu des années 60, il officie en tant que machiniste et régisseur de télévision, puis réalise de nombreux courts et moyens métrages. C'est en 1974 que Peter Weir signe son premier long-métrage, la comédie burlesque et fantastique Les Voitures qui ont mangé Paris, suivi du drame onirique Pique-nique à Hanging Rock et du film-catastrophe La Derniere Vague. Mais c'est en 1981, avec Gallipoli, qu'il ouvre son œuvre à un public international en recréant à l'écran la bataille du même nom. Dès lors, Peter Weir trace une carrière à la fois éclectique et réfléchie. Cinéaste rare, il aborde successivement des thèmes variés et jongle avec des genres différents. Il réalise ainsi en 1982 L' Année de tous les dangers, film d’aventure avec Mel Gibson, puis passe définitivement à la postérité trois ans après avec le thriller Witness, dans lequel il dépeint la communauté Hamish à travers les yeux de l’inspecteur John Book, alias Harrison Ford. Il retrouve l’acteur deux ans plus tard pour The Mosquito Coast, dressant avec brio le portrait d’un idéaliste en désaccord avec la civilisation. De succès en succès, Peter Weir obtient la consécration mondiale avec Le Cercle des poètes disparus (1990), dans lequel Robin Williams s’illustre en professeur de littérature. N’hésitant pas à varier les registres, le cinéaste réalise l’année suivante la comédie romantique Green Card, portée par le duo Gérard Depardieu/Andie MacDowell, puis dirige Jeff Bridges en 1993 dans le drame Etat second. Cinq ans plus tard, il donne à Jim Carrey son premier rôle dramatique avec le film d'anticipation The Truman Show, qui restera emblématique pour beaucoup et qui confirmera le talent du réalisateur pour dépeindre la nature humaine. En 2003, Peter Weir revient sur le devant de la scène en signant le film d'aventure Master & Commander : de l'autre côté du monde, retraçant la quête obsessionnelle et épique du capitaine Jack Aubrey, portée par Russell Crowe. Après une nouvelle pause de quelques années, le réalisateur orchestre un autre film d’aventure historique, cette fois centré sur l’évasion d’un groupe de prisonniers tentant de s’échapper d’un goulag stalinien. Véritable voyage initiatique, Les Chemins de la liberté (2011) met notamment en scène Ed Harris, Colin Farrell ou encore Jim Sturgess.", image: "directors/peter_weir.jpg")
d2.countries << australia

w2 = Writer.create(fullname: "Andrew Niccol")
w2.countries << new_zealand

a5 = Actor.create(fullname: "Jim Carrey")
a5.countries << [usa, canada]
a6 = Actor.create(fullname: "Laura Linney")
a6.countries << [usa]
a7 = Actor.create(fullname: "Natascha McElhone")
a7.countries << [england]
a8 = Actor.create(fullname: "Ed Harris")
a8.countries << [usa]
a9 = Actor.create(fullname: "Noah Emmerich")
a9.countries << [usa]
a10 = Actor.create(fullname: "Paul Giamatti")
a10.countries << [usa]
a11 = Actor.create(fullname: "Holland Taylor")
a11.countries << [usa]

m2 = Movie.create(title_vo: "The Truman show", title_vf: "The Truman show", year: "1998", duration: "1h 43min", quality: "DVDRIP", language: "VF", bw: 0, synopsis: "Truman Burbank mène une vie calme et heureuse. Il habite dans un petit pavillon propret de la radieuse station balnéaire de Seahaven. Il part tous les matins à son bureau d'agent d'assurances dont il ressort huit heures plus tard pour regagner son foyer, savourer le confort de son habitat modèle, la bonne humeur inaltérable et le sourire mécanique de sa femme, Meryl. Mais parfois, Truman étouffe sous tant de bonheur et la nuit l'angoisse le submerge. Il se sent de plus en plus étranger, comme si son entourage jouait un rôle. Pis encore, il se sent observé.", image: 'movies/the_truman_show.jpg')
m2.directors << [d2]
m2.writers << [w2]
m2.actors << [a5, a6, a7, a8, a9, a10, a11]
m2.countries << usa

puts 'The Truman show was created'

# *******************************************************
# 					The hateful height
# *******************************************************

d3 = Director.create(fullname: "Quentin Tarantino", birth: "1963-03-27", bio: "Quentin Tarantino passe sa jeunesse dans une banlieue de Los Angeles où sa passion pour le cinéma le mène à travailler dans un vidéoclub. C'est à cette période qu'il décide de rédiger ses premiers scénarios, et qu'il fait la connaissance de Roger Avary, avec lequel il écrira plus tard Pulp Fiction. Quentin Tarantino vend les scripts de True romance et Tueurs nés (adaptés en 1993 et 1994) et se remet rapidement de la frustration de n'avoir pu les réaliser lui-même en finançant, avec l'argent récolté, son premier film, Reservoir Dogs. Il en écrit le scénario et le présente à Harvey Keitel qui s'enthousiasme au point d'y jouer gratuitement. Le film, rapidement culte, impose son auteur comme la nouvelle star du cinéma indépendant américain.", image: "directors/quentin_tarantino.jpg")
d3.countries << usa

w3 = Writer.create(fullname: "Quentin Tarantino")
w3.countries << usa

a12 = Actor.create(fullname: "Samuel L. Jackson")
a12.countries << [usa]
a13 = Actor.create(fullname: "Kurt Russell")
a13.countries << [usa]
a14 = Actor.create(fullname: "Jennifer Jason Leigh")
a14.countries << [usa]
a15 = Actor.create(fullname: "Walton Goggins")
a15.countries << [usa]
a16 = Actor.create(fullname: "Michael Madsen")
a16.countries << [usa]
a17 = Actor.create(fullname: "Tim Roth")
a17.countries << [england]
a18 = Actor.create(fullname: "Demian Bichir")
a18.countries << [mexico]
a19 = Actor.create(fullname: "Bruce Dern")
a19.countries << [usa]
a20 = Actor.create(fullname: "Channing Tatum")
a20.countries << [usa]

m3 = Movie.create(title_vo: "The hateful height", title_vf: "Les huits salopards", year: "2016", duration: "2h 48min", quality: "1080p", language: "VOST", bw: 0, synopsis: "Quelques années après la Guerre de Sécession, le chasseur de primes John Ruth, dit Le Bourreau, fait route vers Red Rock, où il conduit sa prisonnière Daisy Domergue se faire pendre. Sur leur route, ils rencontrent le Major Marquis Warren, un ancien soldat lui aussi devenu chasseur de primes, et Chris Mannix, le nouveau shérif de Red Rock. Surpris par le blizzard, ils trouvent refuge dans une auberge au milieu des montagnes, où ils sont accueillis par quatre personnages énigmatiques : le confédéré, le mexicain, le cowboy et le court-sur-pattes. Alors que la tempête s’abat au-dessus du massif, l’auberge va abriter une série de tromperies et de trahisons. L’un de ces huit salopards n’est pas celui qu’il prétend être ; il y a fort à parier que tout le monde ne sortira pas vivant de l’auberge de Minnie…", image: 'movies/the_hateful_height.jpg')
m3.directors << [d3]
m3.writers << [w3]
m3.actors << [a12, a13, a14, a15, a16, a17, a18, a19, a20]
m3.countries << usa

puts 'The hateful height was created'
#lang pyret

# "bilde-(nummer)" refererer til stegene i sekvensen

# Definerer de forskjellige sirklene og pinnen
pinne = circle(15, "solid", "black")
gul-sirkel = circle(100, "solid", "yellow")
bla-sirkel = circle(80, "solid", "blue")
gronn-sirkel = circle(60, "solid", "green")
rod-sirkel = circle(40, "solid", "red")

# Setter senen med alle pinnene 
scene = put-image(pinne, 100, 100, put-image(pinne, 500, 100, put-image(pinne, 300, 100, empty-scene(600, 200))))

# Plasserer sirklene på venstre pinne
start-posisjon = put-image(pinne, 100, 100, put-image(rod-sirkel, 100, 100, put-image(gronn-sirkel, 100, 100, put-image(bla-sirkel, 100, 100, put-image(gul-sirkel, 100, 100, scene)))))
start-posisjon

# Fjerner rod fra venstre pinne
bilde-flyttet-rod-sirkel = put-image(pinne, 100, 100, put-image(gronn-sirkel, 100, 100, start-posisjon))
# Plasserer rod på midtre pinne
bilde-1 = put-image(pinne, 300, 100, put-image(rod-sirkel, 300, 100, bilde-flyttet-rod-sirkel))
bilde-1

# Fjerner grønn fra venstre pinne
bilde-flyttet-gronn-sirkel-hoyre = put-image(pinne, 100, 100, put-image(gronn-sirkel, 500, 100, bilde-1))
# Plasserer grønn på høyre pinne
bilde-2 = put-image(pinne, 500, 100, put-image(pinne, 100, 100, put-image(bla-sirkel, 100, 100, bilde-flyttet-gronn-sirkel-hoyre)))
bilde-2

# Flytter rød til høyre pinne
bilde-3 = put-image(pinne, 500, 100, put-image(pinne, 100, 100, put-image(rod-sirkel, 500, 100, put-image(gronn-sirkel, 500, 100, put-image(bla-sirkel, 100, 100, put-image(gul-sirkel, 100, 100, scene))))))
bilde-3

# Flytter blå til midten
bilde-4 = put-image(pinne, 300, 100, put-image(pinne, 100, 100, put-image(gul-sirkel, 100, 100, put-image(bla-sirkel, 300, 100, bilde-3))))
bilde-4

# Flytter rød til venstre pinne
bilde-5 = put-image(pinne, 500, 100, put-image(pinne, 100, 100, put-image(rod-sirkel, 100, 100, put-image(gronn-sirkel, 500, 100, bilde-4))))
bilde-5

# Flytter grønn til midten
bilde-6 = put-image(pinne, 100, 100, put-image(pinne, 500, 100, put-image(pinne, 300, 100, put-image(rod-sirkel, 100, 100, put-image(gronn-sirkel, 300, 100, put-image(bla-sirkel, 300, 100, put-image(gul-sirkel, 100, 100, scene)))))))
bilde-6

# Flytte rød til midten
bilde-7 = put-image(pinne, 100, 100, put-image(pinne, 300, 100, put-image(gul-sirkel, 100, 100, put-image(rod-sirkel, 300, 100, bilde-6))))
bilde-7

# Flytte gul til høyre
bilde-8 = put-image(pinne, 500, 100, put-image(pinne, 300, 100, put-image(rod-sirkel, 300, 100, put-image(gronn-sirkel, 300, 100, put-image(bla-sirkel, 300, 100, put-image(gul-sirkel, 500, 100, scene))))))
bilde-8

# Flytte rød til høyre
bilde-9 = put-image(pinne, 500, 100, put-image(pinne, 300, 100, put-image(gronn-sirkel, 300, 100, put-image(rod-sirkel, 500, 100, bilde-8))))
bilde-9

# Grønn til venstre
bilde-10 = put-image(pinne, 100, 100, put-image(pinne, 300, 100, put-image(bla-sirkel, 300, 100, put-image(gronn-sirkel, 100, 100, bilde-9))))
bilde-10

# Rød til venstre
bilde-11 = put-image(pinne, 100, 100, put-image(pinne, 500, 100, put-image(gul-sirkel, 500, 100, put-image(rod-sirkel, 100, 100, bilde-10))))
bilde-11

# Blå til høyre
bilde-12 = put-image(pinne, 500, 100, put-image(pinne, 100, 100, put-image(rod-sirkel, 100, 100, put-image(gronn-sirkel, 100, 100, put-image(bla-sirkel, 500, 100, put-image(gul-sirkel, 500, 100, scene))))))
bilde-12


# Flytte rød til midten
bilde-13 = put-image(pinne, 100, 100, put-image(pinne, 300, 100, put-image(gronn-sirkel, 100, 100, put-image(rod-sirkel, 300, 100, bilde-12))))
bilde-13

# Flytte grønn til høyre
bilde-14 = put-image(pinne, 500, 100, put-image(pinne, 300, 100, put-image(rod-sirkel, 300, 100, put-image(gronn-sirkel, 500, 100, put-image(bla-sirkel, 500, 100, put-image(gul-sirkel, 500, 100, scene))))))
bilde-14

# Flytte rød til høyre
bilde-15 = put-image(pinne, 500, 100, put-image(rod-sirkel, 500, 100, put-image(gronn-sirkel, 500, 100, put-image(bla-sirkel, 500, 100, put-image(gul-sirkel, 500, 100, scene)))))
bilde-15
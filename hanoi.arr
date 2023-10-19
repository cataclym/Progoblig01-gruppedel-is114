#lang pyret

# Definerer de forskjellige sirklene og pinnen. 
pinne = circle(15, "solid", "black")
gul-sirkel = circle(100, "solid", "yellow")
bla-sirkel = circle(80, "solid", "blue")
gronn-sirkel = circle(60, "solid", "green")
rod-sirkel = circle(40, "solid", "red")

# Setter senen med alle pinnene 
scene = put-image(pinne, 100, 100, put-image(pinne, 500, 100, put-image(pinne, 300, 100, empty-scene(600, 200))))

# Plasserer sirklene på venstre pinne
bilde-1 = put-image(pinne, 100, 100, put-image(rod-sirkel, 100, 100, put-image(gronn-sirkel, 100, 100, put-image(bla-sirkel, 100, 100, put-image(gul-sirkel, 100, 100, scene)))))
bilde-1

# Fjerner rod fra venstre pinne
bilde-flyttet-rod-sirkel = put-image(pinne, 100, 100, put-image(gronn-sirkel, 100, 100, bilde-1))
# Plasserer rod på midtre pinne
bilde-2 = put-image(pinne, 300, 100, put-image(rod-sirkel, 300, 100, bilde-flyttet-rod-sirkel))
bilde-2

# Fjerner grønn fra venstre pinne
bilde-flyttet-gronn-sirkel-hoyre = put-image(pinne, 100, 100, put-image(gronn-sirkel, 500, 100, bilde-2))
# Plasserer grønn på høyre pinne
bilde-3 = put-image(pinne, 500, 100, put-image(pinne, 100, 100, put-image(bla-sirkel, 100, 100, bilde-flyttet-gronn-sirkel-hoyre)))
bilde-3

# Flytter rød til høyre pinne
bilde-4 = put-image(pinne, 500, 100, put-image(pinne, 100, 100, put-image(rod-sirkel, 500, 100, put-image(gronn-sirkel, 500, 100, put-image(bla-sirkel, 100, 100, put-image(gul-sirkel, 100, 100, scene))))))
bilde-4

# Flytter blå til midten
bilde-5 = put-image(pinne, 300, 100, put-image(pinne, 100, 100, put-image(gul-sirkel, 100, 100, put-image(bla-sirkel, 300, 100, bilde-4))))
bilde-5

# Flytter rød til venstre pinne
bilde-6 = put-image(pinne, 500, 100, put-image(pinne, 100, 100, put-image(rod-sirkel, 100, 100, put-image(gronn-sirkel, 500, 100, bilde-5))))
bilde-6

# Flytter grønn til midten
bilde-7 = put-image(pinne, 100, 100, put-image(pinne, 500, 100, put-image(pinne, 300, 100, put-image(rod-sirkel, 100, 100, put-image(gronn-sirkel, 300, 100, put-image(bla-sirkel, 300, 100, put-image(gul-sirkel, 100, 100, scene)))))))
bilde-7

# Flytte rød til midten
bilde-8 = put-image(pinne, 100, 100, put-image(pinne, 300, 100, put-image(gul-sirkel, 100, 100, put-image(rod-sirkel, 300, 100, bilde-7))))
bilde-8

# Flytte gul til høyre
bilde-9 = put-image(pinne, 500, 100, put-image(pinne, 300, 100, put-image(rod-sirkel, 300, 100, put-image(gronn-sirkel, 300, 100, put-image(bla-sirkel, 300, 100, put-image(gul-sirkel, 500, 100, scene))))))
bilde-9

# Flytte rød til høyre
bilde-10 = put-image(pinne, 500, 100, put-image(pinne, 300, 100, put-image(gronn-sirkel, 300, 100, put-image(rod-sirkel, 500, 100, bilde-9))))
bilde-10

# Grønn til venstre
bilde-11 = put-image(pinne, 100, 100, put-image(pinne, 300, 100, put-image(bla-sirkel, 300, 100, put-image(gronn-sirkel, 100, 100, bilde-10))))
bilde-11

# Rød til venstre
bilde-12 = put-image(pinne, 100, 100, put-image(pinne, 500, 100, put-image(gul-sirkel, 500, 100, put-image(rod-sirkel, 100, 100, bilde-11))))
bilde-12

# Blå til høyre
bilde-13 = put-image(pinne, 500, 100, put-image(pinne, 100, 100, put-image(rod-sirkel, 100, 100, put-image(gronn-sirkel, 100, 100, put-image(bla-sirkel, 500, 100, put-image(gul-sirkel, 500, 100, scene))))))
bilde-13


# Flytte rød til midten
bilde-14 = put-image(pinne, 100, 100, put-image(pinne, 300, 100, put-image(gronn-sirkel, 100, 100, put-image(rod-sirkel, 300, 100, bilde-13))))
bilde-14

# Flytte grønn til høyre
bilde-15 = put-image(pinne, 500, 100, put-image(pinne, 300, 100, put-image(rod-sirkel, 300, 100, put-image(gronn-sirkel, 500, 100, put-image(bla-sirkel, 500, 100, put-image(gul-sirkel, 500, 100, scene))))))
bilde-15

# Flytte rød til høyre
bilde-16 = put-image(pinne, 500, 100, put-image(rod-sirkel, 500, 100, put-image(gronn-sirkel, 500, 100, put-image(bla-sirkel, 500, 100, put-image(gul-sirkel, 500, 100, scene)))))
bilde-16
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

# Fjerner gronn fra venstre pinne
bilde-flyttet-gronn-sirkel = put-image(pinne, 100, 100, put-image(bla-sirkel, 100, 100, bilde-2))
# Plasserer gronn på midtre pinne
bilde-3 = put-image(pinne, 300, 100, put-image(gronn-sirkel, 300, 100, bilde-flyttet-gronn-sirkel))
bilde-3

# Fjerner bla fra venstre pinne
bilde-flyttet-bla-sirkel = put-image(pinne, 100, 100, put-image(gul-sirkel, 100, 100, bilde-2))
# Plasserer bla på midtre pinne
bilde-4 = put-image(pinne, 300, 100, put-image(bla-sirkel, 300, 100, bilde-flyttet-bla-sirkel))
bilde-4

# Skaper senen på nytt med gul sirkel på midtre pinne
bilde-flytte-gul-sirkel = put-image(pinne, 300, 100, put-image(gul-sirkel, 300, 100, scene))
bilde-flytte-gul-sirkel

# Skaper senen på nytt med bla sirkel på midtre pinne
bilde-plassert-gul-sirkel = put-image(pinne, 300, 100, put-image(bla-sirkel, 300, 100, scene))
# Plasserer gul på høyre pinne
bilde-5 = put-image(pinne, 500, 100, put-image(gul-sirkel, 500, 100, bilde-plassert-gul-sirkel))
bilde-5

# Skaper senen på nytt med gronn sirkel på midtre pinne
bilde-plassert-bla-sirkel = put-image(pinne, 300, 100, put-image(gronn-sirkel, 300, 100, scene))
# Plasserer bla på høyre pinne
bilde-6 = put-image(pinne, 500, 100, put-image(bla-sirkel, 500, 100, put-image(gul-sirkel, 500, 100, bilde-plassert-bla-sirkel)))
bilde-6

# Skaper senen på nytt med rod på midtre pinne
bilde-plassert-gronn-sirkel = put-image(pinne, 300, 100, put-image(rod-sirkel, 300, 100, scene))
# Plasserer  gronn på høyre pinne
bilde-7 = put-image(pinne, 500, 100, put-image(gronn-sirkel, 500, 100, put-image(bla-sirkel, 500, 100, put-image(gul-sirkel, 500, 100, bilde-plassert-gronn-sirkel))))
bilde-7

# Skaper senen på nytt og plasserer alle sirklene på høyre pinne
bilde-8 = put-image(pinne, 500, 100, put-image(rod-sirkel, 500, 100, put-image(gronn-sirkel, 500, 100, put-image(bla-sirkel, 500, 100, put-image(gul-sirkel, 500, 100, scene)))))
bilde-8
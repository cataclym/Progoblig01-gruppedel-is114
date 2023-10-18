#lang pyret

# Definerer de forskjellige sirklene og pinnen. 
pinne = circle(15, "solid", "black")
yellow = circle(100, "solid", "yellow")
blue = circle(80, "solid", "blue")
green = circle(60, "solid", "green")
red = circle(40, "solid", "red")

# Setter senen med alle pinnene 
scene = put-image(pinne, 100, 100, put-image(pinne, 500, 100, put-image(pinne, 300, 100, empty-scene(600, 200))))

# Plasserer sirklene på venstre pinne
image1 = put-image(pinne, 100, 100, put-image(red, 100, 100, put-image(green, 100, 100, put-image(blue, 100, 100, put-image(yellow, 100, 100, scene)))))
image1

# Fjerner rød fra venstre pinne
imageMovedRed = put-image(pinne, 100, 100, put-image(green, 100, 100, image1))
# Plasserer rød på midtre pinne
image2 = put-image(pinne, 300, 100, put-image(red, 300, 100, imageMovedRed))
image2

# Fjerner grønn fra venstre pinne
imageMovedGreen = put-image(pinne, 100, 100, put-image(blue, 100, 100, image2))
# Plasserer grønn på midtre pinne
image3 = put-image(pinne, 300, 100, put-image(green, 300, 100, imageMovedGreen))
image3

# Fjerner blå fra venstre pinne
imageMovedBlue = put-image(pinne, 100, 100, put-image(yellow, 100, 100, image2))
# Plasserer blå på midtre pinne
image4 = put-image(pinne, 300, 100, put-image(blue, 300, 100, imageMovedBlue))
image4

# Skaper senen på nytt med gul sirkel på midtre pinne
imageMovedYellow = put-image(pinne, 300, 100, put-image(yellow, 300, 100, scene))
imageMovedYellow

# Skaper senen på nytt med blå sirkel på midtre pinne
imagePlacedYellow = put-image(pinne, 300, 100, put-image(blue, 300, 100, scene))
# Plasserer gul på høyre pinne
image5 = put-image(pinne, 500, 100, put-image(yellow, 500, 100, imagePlacedYellow))
image5

# Skaper senen på nytt med grønn sirkel på midtre pinne
imagePlacedBlue = put-image(pinne, 300, 100, put-image(green, 300, 100, scene))
# Plasserer blå på høyre pinne
image6 = put-image(pinne, 500, 100, put-image(blue, 500, 100, put-image(yellow, 500, 100, imagePlacedBlue)))
image6

# Skaper senen på nytt med rød på midtre pinne
imagePlacedGreen = put-image(pinne, 300, 100, put-image(red, 300, 100, scene))
# Plasserer  grønn på høyre pinne
image7 = put-image(pinne, 500, 100, put-image(green, 500, 100, put-image(blue, 500, 100, put-image(yellow, 500, 100, imagePlacedGreen))))
image7

# Skaper senen på nytt og plasserer alle sirklene på høyre pinne
image8 = put-image(pinne, 500, 100, put-image(red, 500, 100, put-image(green, 500, 100, put-image(blue, 500, 100, put-image(yellow, 500, 100, scene)))))
image8
import random

def svgBegin(width, height):
    return "<svg width='{:.2f}' height='{:.2f}' xmlns='http://www.w3.org/2000/svg'>\n".format(width, height)

def svgEnd():
    return "</svg>"

def svgTriangle(x, y, fill):
    return "<polygon points='{},{} {},{} {},{}' fill='{}' />\n".format(x-5, y+5, x+5, y+5, x, y, fill)

def svgCircle(x, y, r, fill, stroke, strokeWidth):
    return "<circle cx='{}' cy='{}' r='{}' fill='{}' stroke='{}' stroke-width='{}' />\n".format(x, y, r, fill, stroke, strokeWidth)

def svgRect(x, y, fill):
    return "<rect width='{}' height='{}' fill='{}' />\n".format(x, y, fill)

def svgAll(x1, y1, x2, y2, x3, y3, x4, y4, x5, y5, x6, y6, x7, y7, x8, y8, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17):
    return (
        svgBegin(500, 500) +
        svgRect(500, 500, "rgba(24,25,34,255)") +  # bg
        svgCircle(20, 40, 120, "rgba(211,28,22,255)", "rgba(235,133,49,255)", 11) + #sun
        svgCircle(x1, y1, 15, "rgb(204,167,104,255)", "rgba(251,241,231,255)", 4) +  # mercury
        svgCircle(x2, y2, 20, "rgb(249,211,117,255)", "rgba(251,241,231,255)", 4) +  #venus 
        svgCircle(x3, y3, 25, "rgb(49,131,135,255)", "rgba(251,241,231,255)", 4) +  #earth
        svgCircle(x4, y4, 12, "rgb(209,66,40,255)", "rgba(251,241,231,255)", 4) +  #mars
        svgCircle(x5, y5, 40, "rgb(244,127,47,255)", "rgba(251,241,231,255)", 4) +  #jupiter
        svgCircle(x6, y6, 40, "rgba(250,214,101,255)", "rgba(251,241,231,255)", 4) +  #saturn 
        svgCircle(x7, y7, 25, "rgb(145,227,248,255)", "rgba(251,241,231,255)", 4) +  #uranus
        svgCircle(x8, y8, 25, "rgb(63,144,201,255)", "rgba(251,241,231,255)", 4) +  #neptune
        svgTriangle(s1[0], s1[1], "yellow") + #star
        svgTriangle(s2[0], s2[1], "yellow") + #star
        svgTriangle(s3[0], s3[1], "yellow") + #star
        svgTriangle(s4[0], s4[1], "yellow") + #star
        svgTriangle(s5[0], s5[1], "yellow") + #star
        svgTriangle(s6[0], s6[1], "yellow") + #star
        svgTriangle(s8[0], s8[1], "yellow") + #star
        svgTriangle(s9[0], s9[1], "yellow") + #star
        svgTriangle(s10[0], s10[1], "white") + #star
        svgTriangle(s11[0], s11[1], "white") + #star
        svgTriangle(s12[0], s12[1], "white") + #star
        svgTriangle(s13[0], s13[1], "white") + #star
        svgTriangle(s14[0], s14[1], "white") + #star
        svgTriangle(s15[0], s15[1], "white") + #star
        svgTriangle(s16[0], s16[1], "white") + #star
        svgTriangle(s17[0], s17[1], "white") + #star
        svgEnd()
    )

def getRandomCoords(max):
    x = random.randint(0, max)
    y = random.randint(0, max)
    return (x, y)

def main():
    x1, y1 = getRandomCoords(500)
    x2, y2 = getRandomCoords(500)
    x3, y3 = getRandomCoords(500)
    x4, y4 = getRandomCoords(500)
    x5, y5 = getRandomCoords(500)
    x6, y6 = getRandomCoords(500)
    x7, y7 = getRandomCoords(500)
    x8, y8 = getRandomCoords(500)
    s1 = getRandomCoords(500)
    s2 = getRandomCoords(500)
    s3 = getRandomCoords(500)
    s4 = getRandomCoords(500)
    s5 = getRandomCoords(500)
    s6 = getRandomCoords(500)
    s7 = getRandomCoords(500)
    s8 = getRandomCoords(500)
    s9 = getRandomCoords(500)
    s10 = getRandomCoords(500)
    s11 = getRandomCoords(500)
    s12 = getRandomCoords(500)
    s13 = getRandomCoords(500)
    s14 = getRandomCoords(500)
    s15 = getRandomCoords(500)
    s16 = getRandomCoords(500)
    s17 = getRandomCoords(500)
    with open("output.svg", "w") as file:
        file.write(svgAll(x1, y1, x2, y2, x3, y3, x4, y4, x5, y5, x6, y6, x7,y7, x8, y8, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17))

if __name__ == "__main__":
    main()

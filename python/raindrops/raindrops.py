def convert(number):
    rain = ""
    if number % 3 == 0:
        rain = rain + "Pling"
    if number % 5 == 0:
        rain = rain + "Plang"
    if number % 7 == 0:
        rain = rain + "Plong"
    if rain == "":
        rain = rain + str(number)
    return rain

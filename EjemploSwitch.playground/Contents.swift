//Estructura switch

let numero = 1
switch numero {
case 1:
    print("El numero es 1")
case 2:
    print("El numero es 2")
case 4...10: //Rango
    print("El numero esta entre 4 y 10")
default:
    print("El numero no se registro")
}

let dia = "lunes"
switch dia {
case "domingo":
    print("Hoy es día de descansar")
case "lunes", "martes", "miercoles", "jueves", "viernes":
    print("Hoy es día de ir al escuela")
case "sabado":
    print("Hoy es día de ir a pasear")
default:
    print("Escriba un día de la semana")
}

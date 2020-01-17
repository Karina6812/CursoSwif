//Transformar un tipo de dato a otro
let numero1 = "10"
let numero2 = 20
/*
let suma = Int(numero1)! + numero2 // Int()! es como convert pero el ! esta forzando la operación
print(suma)
*/
if let valor1 = Int(numero1)
{
    let suma = valor1 + numero2
    print(suma)
}
else
{
    print("Favor de escribir un número para la suma")
}

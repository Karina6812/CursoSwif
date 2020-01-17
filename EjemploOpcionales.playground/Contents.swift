//Opcionales
var numero : Int? // nil = null
numero = 23
print(numero ?? "Sin valor") // Esto se convertiria en un 'tipo de if' por si nuestra variable no tiene valor nos mandara el mensaje

//Opcional bindig

if let edad = numero
{
    print("La edad es:", edad)
}
else
{
    print("Sin valor")
}

func edad(edad: Int?) //Esto solo funciona dentro de un método o una función
{
    guard let age = edad else //guard let solo ejecuta el false a diferencia del if que tiene true y false
    {
        print("Escriba su edad")
        return
    }
    print("Mi edad es: ", age)
}
edad(edad: numero)



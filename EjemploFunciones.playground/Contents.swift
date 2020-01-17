//Funciones

func hola(nombre: String)
{
    print("hola", nombre)
}

hola(nombre: "Javier")
hola(nombre: "Manuel")
hola(nombre: "Sandra")

    //La flechita indica que la funcion debe retornar ->
func suma(valor1: Int, valor2: Int) -> Int
{
    return valor1 + valor2
}

let val1 = 10
let resultado = suma(valor1: val1, valor2: 5)
print(resultado)



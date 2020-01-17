import UIKit

// Multilinea
//  Las tres comillas son para que el texto lleve salto de linea
let texto = """
Borrelsword
Dragon
ATK/3000
LINK-4 🐉
"""
print (texto)

//Concatenar
let valor1 = "Hola"
let valor2 = "mundo"
print(valor1 + " " + valor2) // Se debe poner el espacio manualmente
print(valor1, valor2) // Con la coma Automaticamente se pone el espacio
print ("Hola \(valor2)") // Para poner valor2 dentro del print se pone \()

//Emojis
var emoji = "Concatenando dinosaurios 😁 " // control + command + espacio para poner emojis
let brachiosaurio : Character = "🦕"
let tiranosaurio : Character = "🦖"
    //String es de muchos y Character solo 1, ya sea 1 letra o 1 emoji y sin espacio
emoji.append(brachiosaurio)
emoji.append(tiranosaurio)
print(emoji)

//Contar total de caracteres
print(emoji.count)

//Comprobar su esta vacío
let vacio = "🦕"
if vacio .isEmpty
{
    print("El string esta vacio")
}
else
{
    print("El strin tiene el caracter:", vacio)
}

//Prefix
print(emoji.prefix(29)) // Dependiendo del numero que le demos nos permitira imprimir ese numero de caracteres

//Clases

    //Las clases por autonomasia deben inciar en Mayuscula para diferenciarlas
    //Las clases tiene Propiedades que son las variables que usara el Constructor
class Persona
{
    //Propiedades
    var nombre : String = ""
    var edad : Int = 8
    
    //Constructor
    init(nom : String, age : Int) // nom y age son Parametros
    {
        //self hace refencia a las variables que estan fuera del contructor
        self.nombre = nom
        self.edad = age
    }
    
    //Metodos -> Funciones
    func hola() -> String {
        return "Hola 🦕"
    }
}

let persona1 = Persona(nom: "Arturo", age: 40) //Objeto
let persona2 = Persona(nom: "Marta", age: 39) //Objeto
print(persona1.nombre)
print(persona2.edad)
print(persona2.hola())

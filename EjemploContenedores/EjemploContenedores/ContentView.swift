//
//  ContentView.swift
//  EjemploContenedores
//
//  Created by Ecotouch Tijuana on 07/01/20.
//  Copyright © 2020 Grupo eco. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAlert : Bool = false // Si omitimo el :Bool no afecta con el false se entiende que es boleano
    @State private var showActionSheet = false //Se entiende que false en Boleano
    
    var alert:Alert
    {
        Alert(title: Text("Alerta!"), message: Text("Soy un dinosaurio 🦕"), dismissButton: .default(Text("Aceptar")))
    }
    
    var actionSheet : ActionSheet
    {
        ActionSheet(title: Text("Menu"), message: Text("Seleccione una accion"), buttons: [
            .default(Text("Galería")),
            .default(Text("Cámara")),
            .cancel(Text("Cancelar"))
        ])
    }
    
    var body: some View {
        //Importante: solo se puede tener 1 elemento dentro del body
        VStack(alignment: .center, spacing: 20)
        {
            Text("Haz primero lo que te asuste.").font(.largeTitle).foregroundColor(.blue).underline().bold()
            Text("Y asustate después")
                .font(.title)
                .foregroundColor(.gray)
                .bold()
            Spacer() //Hace una expacion, todo lo que puede, entre un elemento y otro
            HStack(alignment: .center, spacing: 10)
            {
                Button(action: {self.showAlert.toggle()}) //Comportamiento del botón
                {
                    //Formato del botón
                    HStack()
                    {
                        /*Spacer() Esta clase expande el botón */
                        Image(systemName: "rectangle.grid.1x2.fill")
                            .foregroundColor(.white)
                        Text("Alerta")
                        .foregroundColor(.blue)
                        .font(.headline)
                    }.padding(.all)
                }.background(Color.gray) //No se puede poner directamente el color, se debe utilizar la clase Color.
                .cornerRadius(20) //Le da un estilo mas redondeado al botón
                //Es importante donde colocamos nuestro comando para darle formato al botón
                .alert(isPresented: self.$showAlert) { () -> Alert in
                        self.alert
                }
                Button (action:{self.showActionSheet.toggle()/* Comportamiento del botón */})
                {
                    HStack()
                    {
                        Image(systemName: "speaker.zzz.fill")
                            .foregroundColor(.white)
                        Text("Hoja de Acción")
                            .foregroundColor(.white)
                            .font(.headline)
                    }.padding(.all)
                }.background(Color.blue)
                    .actionSheet(isPresented: self.$showActionSheet) {() -> ActionSheet in self.actionSheet}
            }
        }.padding(.all) //Agrega un margen para que los elementos no estan hasta el borde
        //Stack nos permite tener varios elementos dentro del body
        //Existen varios Stack VStack es de vertical stack por eso pone un texto y debajo el otro
        //HStack es de Horizontal
        //ZStack es de profundidad y pone 1 encima del otro. Esto puede servir en animaciones
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

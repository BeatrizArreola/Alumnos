//
//  Materia.swift
//  tableViews
//
//  Created by Maestro on 23/09/16.
//  Copyright © 2016 Miranda. All rights reserved.
//

import Foundation

class Materia{
    var nombre : String
    var descripcion : String?
    
    var calificacionPrimerParcial : Double?
    var calificacionSegundoParcial : Double?
    var calificacionTercerParcial : Double?
    var calificacionFinal : Double?



    
    init(){
        nombre = "Nueva materia"
    }
    
    init (nombre: String){
        self.nombre = nombre
    }
    
    
    init (nombre : String, descripcion : String){
        self.nombre = nombre
        self.descripcion = descripcion
    }

}
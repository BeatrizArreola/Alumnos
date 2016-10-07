//
//  Descripcion.swift
//  tableViews
//
//  Created by Maestro on 29/09/16.
//  Copyright © 2016 Miranda. All rights reserved.
//

import Foundation
import UIKit


class Descripcion: UIViewController {
    
    
    var alumno : Alumno?
    
    var materia : Materia?
    
    @IBOutlet weak var NombreAlumno: UILabel!
    
    
    @IBOutlet weak var NombreMateria: UILabel!
    
    
    @IBOutlet weak var Cal1: UILabel!
    
    
    @IBOutlet weak var Cal2: UILabel!
    
    
    @IBOutlet weak var Cal3: UILabel!
    
    
    @IBOutlet weak var Texto: UITextView!
    
    
    
    override func viewDidLoad() {
        NombreMateria.text = materia!.nombre
        NombreAlumno.text = "\(alumno!.nombre) \(alumno!.apellido)"         //    \ escapa las variables
        
        
        Cal1.text = String(materia!.calificacionPrimerParcial!)
        Cal2.text = String(materia!.calificacionSegundoParcial!)
        Cal3.text = String(materia!.calificacionTercerParcial!)
    }
    
    

}
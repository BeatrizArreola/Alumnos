//
//  AlumnosController.swift
//  tableViews
//
//  Created by Maestro on 23/09/16.
//  Copyright © 2016 Miranda. All rights reserved.
//

import Foundation
import UIKit

class AlumnosController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
      @IBOutlet weak var tvAlumnos: UITableView!
    var alumnos : [Alumno] = [] //arreglo de alumnos
    
    override func viewDidLoad() {
        self.title = "Alumnos"
        
        
        alumnos.append(Alumno(nombre: "Justin ", apellido: "Timberlake", matricula: "158456", carrera: "Ing. en Produccion Multimedia", foto: "1" ))
        
        alumnos.append(Alumno(nombre: "Ian ", apellido: "Somerhalder", matricula: "158456", carrera: "Ing. en Telecomunicaciones", foto: "2" ))
        
        alumnos.append(Alumno(nombre: "Paul ", apellido: "Wesley", matricula: "158456", carrera: "Ing. en Software", foto: "3" ))
        
        alumnos.append(Alumno(nombre: "Matt ", apellido: "Bomer", matricula: "158456", carrera: "Ing. en Electromedica", foto: "4" ))
        
        
        alumnos[0].materias.append(Materia(nombre: "Matematicas"))

    }
    
  
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("celdaAlumno") as! CeldaAlumnoController
        celda.lblNombreAlumno.text = alumnos [indexPath.row].nombre + "" + alumnos[indexPath.row].apellido
        celda.lblMatricula.text = alumnos[indexPath.row].matricula
        celda.lblCarrera.text = alumnos [indexPath.row].carrera
        celda.imgFoto.image = alumnos[indexPath.row].imgFoto
        
    
        return celda
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "goToMaterias"{
        
            let materiasController = segue.destinationViewController as! ViewController    //en este caso seria el materiasController
            materiasController.alumno = alumnos [tvAlumnos.indexPathForSelectedRow!.row]
            
        }
        
    }
    
    
    
}
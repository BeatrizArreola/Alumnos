//
//  ViewController.swift
//  tableViews
//
//  Created by Maestro on 22/09/16.
//  Copyright © 2016 Miranda. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var alumno : Alumno?
    
    
    var materias : [Materia] = []
    
    
    @IBOutlet weak var tvMaterias: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "las materias"
        
       
                
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        //una seccion
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       //5 filas
        return alumno!.materias.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //la celda, es el control de lo que va a renderear, osea la info
        
        let celda = tvMaterias.dequeueReusableCellWithIdentifier("celdaMateria")
        celda?.textLabel?.text = alumno!.materias[indexPath.row].nombre
        
        
        return celda!
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToDetalleMateria"{
        let DescripcionController = segue.destinationViewController as! Descripcion
            DescripcionController.alumno = alumno
            DescripcionController.materia = alumno?.materias[tvMaterias.indexPathForSelectedRow!.row]
            
            
        
        }
    }
    
    
    

}


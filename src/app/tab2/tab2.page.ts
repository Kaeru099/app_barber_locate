import { Component } from '@angular/core';
import { ConexionService } from '../services/conexion.service';
  
@Component({
  selector: 'app-tab2',
  templateUrl: 'tab2.page.html',
  styleUrls: ['tab2.page.scss']
})
export class Tab2Page  {
  
  barberias: any
    
  constructor(private  conexion: ConexionService) { }

  ngOnInit() {
    this.verBarberias()
  }
  verBarberias() {
    this.conexion.consultaBarberias().subscribe(
      data => {
        this.barberias = data
      }
    )
  }
};






  






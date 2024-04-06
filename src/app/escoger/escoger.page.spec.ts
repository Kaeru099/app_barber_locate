import { ComponentFixture, TestBed } from '@angular/core/testing';
import { EscogerPage } from './escoger.page';
import { Component } from '@angular/core';
import { ModalController } from '@ionic/angular';


  @Component({
    selector: 'app-mi-componente',
    templateUrl: './mi-componente.component.html',
    styleUrls: ['./mi-componente.component.scss'],
   })
   export class MiComponenteComponent {
   
    constructor(private modalController: ModalController) {}
   
    seleccionarBarbero(nombreBarbero: string) {
       console.log(`Barbero seleccionado: ${nombreBarbero}`);
       // Aquí puedes agregar la lógica para navegar a la nueva interfaz
       // Por ejemplo, cerrar el modal y navegar a otra página
       this.modalController.dismiss();
       // Aquí puedes usar el enrutador de Angular para navegar a la nueva interfaz
       // Por ejemplo: this.router.navigate(['/nueva-interfaz']);
    }
   }


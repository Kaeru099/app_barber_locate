import { Component, Input, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ConexionService } from '../services/conexion.service';
import { ModalController } from '@ionic/angular';

@Component({
  selector: 'app-restaurar-contrasena',
  templateUrl: './restaurar-contrasena.page.html',
  styleUrls: ['./restaurar-contrasena.page.scss'],
})
export class RestaurarContrasenaPage implements OnInit {

  @Input() contrasena!: Partial<any>

  constructor(private modalCtrl: ModalController,
              private conexion:ConexionService) { }

  ngOnInit() {
    this.restaurarContrasena();
  }

  form = new FormGroup({
    palabra_u: new FormControl('', [
      Validators.minLength(8),
      Validators.required
    ])
  })

  onSubmit = () => {
    const data = {
      palabra_u: this.form.value.palabra_u
    }
    this.conexion.restaurarContrasena(data).subscribe(
      data => {
        console.log('Contraseña actualizada')
        this.closeModal()
      }, error => {
        console.log('No se pudo actualizar la contraseña')
      }
    )
  }

  async closeModal (){
    this.modalCtrl.dismiss(null, 'closed')
  }

  restaurarContrasena(){
    if(this.contrasena){
      this.form.patchValue(
        {
          palabra_u: this.contrasena['palabra_u']
        }
      )
    }
  }

}

import { Component, Input, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators, ValidatorFn, AbstractControl } from '@angular/forms';
import { ConexionService } from '../services/conexion.service';
import { ModalController, ToastController } from '@ionic/angular';

const coincidirContrasena: ValidatorFn = (control: AbstractControl): {[key: string]: any} | null => {
  const contrasena = control.get('palabra');
  const confirmarContrasena = control.get('confirmar_palabra');
  
  return contrasena && confirmarContrasena && contrasena.value !== confirmarContrasena.value ? { 'coincidirContrasena': true } : null;
};

@Component({
  selector: 'app-restaurar-contrasena',
  templateUrl: './restaurar-contrasena.page.html',
  styleUrls: ['./restaurar-contrasena.page.scss'],
})


export class RestaurarContrasenaPage implements OnInit {


  @Input() contrasena!: Partial<any>

  constructor(private modalCtrl: ModalController,
              private conexion:ConexionService,
              private toastController:ToastController) { }

  quitarEspacio(event: KeyboardEvent) {
    const charCode = (event.which) ? event.which : event.keyCode;
    if (charCode === 32) { // 32 es el código ASCII para el espacio
      event.preventDefault();
    }
  }

  ngOnInit() {
    this.restaurarContrasena();
  }

  form = new FormGroup({
    cedula : new FormControl('', [
      Validators.minLength(6),
      Validators.required,
      Validators.pattern(/^(?=.*[0-9])/)
    ]),
    fecha_nac : new FormControl('', [
      Validators.required
    ]),
    palabra: new FormControl('', [
      Validators.minLength(8),
      Validators.required,
      Validators.pattern(/^(?=.*[a-z])(?=.*[A-Z])/)
    ]),
    confirmar_palabra : new FormControl ('', [
      Validators.required
    ])
  }, { validators: coincidirContrasena });

  onSubmit = () => {
    const data = {
      fk_cedulaU : this.form.value.cedula,
      f_nacimiento : this.form.value.fecha_nac,
      pk_cedulaP : this.form.value.cedula,
      Pf_nacimiento : this.form.value.fecha_nac,
      fk_cedulaB : this.form.value.cedula,
      bf_nacimiento : this.form.value.fecha_nac,
      contrasena: this.form.value.palabra,
      contrasena_P: this.form.value.palabra,
      bcontrasena: this.form.value.palabra,
    }
    this.conexion.restaurarContrasena(data).subscribe(
      data => {
        if(data.msgU == 'ok'){
          console.log('Contraseña actualizada')
          this.contrasenaActualizada
          this.closeModal()
        } else if (data.msgB == 'ok'){
          console.log('Contraseña actualizada')
          this.contrasenaActualizada
          this.closeModal()
        } else if (data.msgP == 'ok'){
          console.log('Contraseña actualizada')
          this.contrasenaActualizada
          this.closeModal()
        } else{
          console.log('No se pudo actualizar la contraseña')
          this.contrasenaFallida
        }
        
      }, error => {
        console.log('Error en la petición:', error)
      }
    );
  };

  async closeModal (){
    this.modalCtrl.dismiss(null, 'closed')
  }

  restaurarContrasena(){
    if(this.contrasena){
      this.form.patchValue(
        {
          palabra: this.contrasena['palabra'],
        }
      )
    }
  }

  async contrasenaActualizada(position: 'top') {
    const toast = await this.toastController.create({
      message : 'La contraseña se ha actualizado correctamente',
      duration : 3000,
      position : position,
    });

    await toast.present();
  }

  async contrasenaFallida(position: 'top') {
    const toast = await this.toastController.create({
      message : 'El número de documento y la fecha de nacimiento no coinciden',
      duration : 4000,
      position : position,
    });

    await toast.present();
  }

}

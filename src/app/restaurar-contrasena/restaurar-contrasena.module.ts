import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { RestaurarContrasenaPageRoutingModule } from './restaurar-contrasena-routing.module';

import { RestaurarContrasenaPage } from './restaurar-contrasena.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    RestaurarContrasenaPageRoutingModule
  ],
  declarations: [RestaurarContrasenaPage]
})
export class RestaurarContrasenaPageModule {}

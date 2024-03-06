import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { RestaurarContrasenaPageRoutingModule } from './restaurar-contrasena-routing.module';

import { RestaurarContrasenaPage } from './restaurar-contrasena.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    RestaurarContrasenaPageRoutingModule,
    ReactiveFormsModule
  ],
  declarations: [RestaurarContrasenaPage]
})
export class RestaurarContrasenaPageModule {}

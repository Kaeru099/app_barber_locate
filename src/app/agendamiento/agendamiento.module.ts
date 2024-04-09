import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { AgendamientoPageRoutingModule } from './agendamiento-routing.module';

import { AgendamientoPage } from './agendamiento.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    AgendamientoPageRoutingModule
  ],
  declarations: [AgendamientoPage]
})
export class AgendamientoPageModule {}

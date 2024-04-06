import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { EscogerPageRoutingModule } from './escoger-routing.module';

import { EscogerPage } from './escoger.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    EscogerPageRoutingModule
  ],
  declarations: [EscogerPage]
})
export class EscogerPageModule {}

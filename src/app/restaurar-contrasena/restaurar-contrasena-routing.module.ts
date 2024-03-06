import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { RestaurarContrasenaPage } from './restaurar-contrasena.page';

const routes: Routes = [
  {
    path: '',
    component: RestaurarContrasenaPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class RestaurarContrasenaPageRoutingModule {}

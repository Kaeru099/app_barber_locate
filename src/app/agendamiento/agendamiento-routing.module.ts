import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { AgendamientoPage } from './agendamiento.page';

const routes: Routes = [
  {
    path: '',
    component: AgendamientoPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class AgendamientoPageRoutingModule {}

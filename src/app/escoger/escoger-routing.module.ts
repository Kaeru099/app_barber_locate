import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { EscogerPage } from './escoger.page';

const routes: Routes = [
  {
    path: '',
    component: EscogerPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class EscogerPageRoutingModule {}

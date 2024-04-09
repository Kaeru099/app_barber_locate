import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  {
    path: '',
    loadChildren: () => import('./tabs/tabs.module').then(m => m.TabsPageModule)
  },
  {
    path: 'restaurar-contrasena',
    loadChildren: () => import('./restaurar-contrasena/restaurar-contrasena.module').then( m => m.RestaurarContrasenaPageModule)
  },  {
    path: 'escoger',
    loadChildren: () => import('./escoger/escoger.module').then( m => m.EscogerPageModule)
  },
  {
    path: 'agendamiento',
    loadChildren: () => import('./agendamiento/agendamiento.module').then( m => m.AgendamientoPageModule)
  }

];
@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule {}

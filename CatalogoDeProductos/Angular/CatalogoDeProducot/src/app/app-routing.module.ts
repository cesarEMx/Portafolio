import { Component, NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HeaderComponent } from './componentes/header/header.component';
import { FooterComponent } from './componentes/footer/footer.component';
import { LoginComponent } from './componentes/body/login/login.component';
import { ProductoComponent } from './componentes/body/producto/producto.component';
import { ProductoBuscarComponent } from './componentes/body/producto/producto-buscar/producto-buscar.component';

const routes: Routes = [

  {path: 'header', component: HeaderComponent},
  {path: 'footer',component: FooterComponent},
  {path: 'login', component:LoginComponent},
  {path:'prodcuto',component:ProductoComponent},
  {path:'prodcuto/buscar',component:ProductoBuscarComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }

import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './componentes/header/header.component';
import { FooterComponent } from './componentes/footer/footer.component';
import { LoginComponent } from './componentes/body/login/login.component';
import { ProductoComponent } from './componentes/body/producto/producto.component';
import { StockComponent } from './componentes/body/stock/stock.component';
import { ProductoBuscarComponent } from './componentes/body/producto/producto-buscar/producto-buscar.component';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { ProductoAgregarComponent } from './componentes/body/producto/producto-agregar/producto-agregar.component';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FooterComponent,
    LoginComponent,
    ProductoComponent,
    StockComponent,
    ProductoBuscarComponent,
    ProductoAgregarComponent

  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule
    
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }

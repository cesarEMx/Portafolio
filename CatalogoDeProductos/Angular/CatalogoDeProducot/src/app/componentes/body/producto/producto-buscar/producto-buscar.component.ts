
import { Component } from '@angular/core';
import { NgForm } from '@angular/forms';

@Component({
  selector: 'app-producto-buscar',
  templateUrl: './producto-buscar.component.html',
  styleUrls: ['./producto-buscar.component.css']
})
export class ProductoBuscarComponent {
  id: number = 0;
  

  formIdProdcuto(numero:NgForm) {
    console.warn('Estamos en formprodcuto');
    console.warn(numero);
  
  }
}

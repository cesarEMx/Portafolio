
import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { NgForm } from '@angular/forms';
import { Marca } from 'src/app/Objetos/marcar';
import { Producto } from 'src/app/Objetos/producto';
import { ProductoService } from 'src/app/servicios/productoServicio/producto.service';

@Component({
  selector: 'app-producto-buscar',
  templateUrl: './producto-buscar.component.html',
  styleUrls: ['./producto-buscar.component.css']
})
export class ProductoBuscarComponent {
  private marcar: Marca={
    id: 0,
    nombre: "undefined",
    descripcion: "undefined",
    precentacion: 0
  }
 private producto: Producto={
   id: 0,
   nombre: "undefined",
   descripcion: "undefined",
   precio: 0,
   marca: this.marcar
 }
  estadoEnvio:boolean = false;
  constructor(private http: ProductoService){}

  formIdProdcuto(idBuscar:any) {
    this.http.buscarId(idBuscar.id).subscribe(data=>{
      if (data != null) {
        console.warn(data);  
      }else{
        console.warn("Busqueda fallida");
      }
    });
   
  
  }
}

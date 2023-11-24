
import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { Marca } from 'src/app/Objetos/marcar';
import { Producto } from 'src/app/Objetos/producto';
import { ProductoService } from 'src/app/servicios/productoServicio/producto.service';


@Component({
  selector: 'app-producto-buscar',
  templateUrl: './producto-buscar.component.html',
  styleUrls: ['./producto-buscar.component.css']
})
export class ProductoBuscarComponent {
  constructor(private http: ProductoService,private httpimg:HttpClient) { }
  private marcar: Marca = {
    id: 0,
    nombre: "undefined",
    descripcion: "undefined",
    precentacion: 0,
    
  }
  public producto: Producto = {
    id:0,
    nombre: "undefined",
    descripcion: "undefined",
    precio: 0,
    marca: this.marcar,
    imagen:"undefined"
  }
 
  estadoEnvio: boolean = false;

  

  formIdProdcuto(idBuscar: any) {

    if (idBuscar.id < 0) {
      console.warn("No se acepta numero negativos");
    }
    this.http.buscarId(idBuscar.id).subscribe(data => {
      if (data != null) {  
        this.estadoEnvio = true;
        this.marcar = {
          id: data.marca.id,
          nombre: data.marca.nombre,
          descripcion: data.marca.descripcion,
          precentacion: data.marca.precentacion
        }
        this.producto = {
          id: data.id,
          nombre: data.nombre,
          descripcion: data.descripcion,
          precio: data.precio,
          marca: this.marcar,
          imagen: data.imagen
       
        }       
      }
      else{
        console.warn("Busqueda fallida");
      }
     
    });


  }
}

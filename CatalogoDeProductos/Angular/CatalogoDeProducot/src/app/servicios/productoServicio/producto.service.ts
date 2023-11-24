import { NgFor } from '@angular/common';
import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Producto } from 'src/app/Objetos/producto';

@Injectable({
  providedIn: 'root'
})
export class ProductoService {
private endPoint:string = "http://localhost:8080/productos";
  constructor(private http:HttpClient) {}

  public buscarId(id:number){

    return this.http.get<Producto>(this.endPoint + `/${id}`);
  }
}

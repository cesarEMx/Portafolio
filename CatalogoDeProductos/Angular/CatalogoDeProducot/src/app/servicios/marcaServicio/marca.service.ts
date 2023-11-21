import { Injectable } from '@angular/core';
import { HttpClient} from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class MarcaService {
  private urlEndPoint:string = "http://localhost:8080/productos";
 
  constructor(private http: HttpClient) { }

  buecarCliente(){
    return this.http.get<>
  }
}

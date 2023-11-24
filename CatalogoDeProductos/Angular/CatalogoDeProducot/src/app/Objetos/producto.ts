import { Marca } from "./marcar";

export interface Producto{
    id:number;
    nombre: String;
    descripcion: String;
    precio:Number;
    // imag?:ArrayBuffer;
    imagen:String;
    marca:Marca;
}
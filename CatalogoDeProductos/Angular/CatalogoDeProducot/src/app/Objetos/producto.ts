
import { Marca } from "./marcar";

export interface Producto{
    id:Number;
    nombre: String;
    descripcion: String;
    precio:Number;
    imag:ArrayBuffer;
    marca:Marca


}
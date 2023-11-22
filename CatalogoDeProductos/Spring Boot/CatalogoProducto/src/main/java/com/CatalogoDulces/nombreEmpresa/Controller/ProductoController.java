/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.CatalogoDulces.nombreEmpresa.Controller;

import com.CatalogoDulces.nombreEmpresa.Modul.Producto;
import com.CatalogoDulces.nombreEmpresa.Repository.ProductoRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author EM_Ce
 */
@RestController
@RequestMapping("/productos")
@CrossOrigin(origins = "http://localhost:4200", maxAge = 3600)
public class ProductoController {
    @Autowired
    ProductoRepository productoRepository;
    
    @GetMapping
    public List<Producto> allProdcutos(){
    return productoRepository.findAll();
    }
    @GetMapping("/{id}")
    public ResponseEntity<Producto> buscarId(@PathVariable Long id){
        Producto producto_Id = productoRepository.findById(id).orElse(null);
        return  ResponseEntity.ok(producto_Id);
    }
     @PostMapping()
    public ResponseEntity<Producto> guardarMarca(@RequestBody Producto producto) {
        Producto nueva_producto = productoRepository.save(producto);
        return new ResponseEntity<>(nueva_producto,HttpStatus.CREATED);
    }
    
    
}

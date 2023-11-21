/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.CatalogoDulces.nombreEmpresa.Controller;

import com.CatalogoDulces.nombreEmpresa.Modul.Marca;
import com.CatalogoDulces.nombreEmpresa.Repository.MarcaRepository;
import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
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
@RequestMapping("/marca")
public class MarcaController {

    @Autowired
    MarcaRepository marcaRepository;

    @GetMapping
    public List<Marca> optenerAllMartcas() {
        return marcaRepository.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Marca> obtenerMarcarid(@PathVariable long id) {
        Marca marcarPorId = marcaRepository.findById(id)
                .orElse(null);
        return ResponseEntity.ok(marcarPorId);
    }

    @PostMapping
    public ResponseEntity<Marca> guardarMarca(@RequestBody Marca marca) {
        Marca nueva_marca = marcaRepository.save(marca);
        return new ResponseEntity<>(nueva_marca,HttpStatus.CREATED);
    }
    @DeleteMapping
    public ResponseEntity<HashMap<String,Boolean>> eliminarMarca(@PathVariable long id){
    marcaRepository.deleteById(id);
    HashMap<String,Boolean>estadoMarcaEliminado = new HashMap<>();
    estadoMarcaEliminado.put("eliminado", true);
    return ResponseEntity.ok(estadoMarcaEliminado);
    }
}/////////////////////////////////////////////////////////////

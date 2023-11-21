/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.CatalogoDulces.nombreEmpresa.Modul;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author EM_Ce
 */
@Entity
@Setter
@Getter
@Table(name = "Productos")
public class Producto {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_Productos")
    long id;
    String nombre;
    String descripcion;
    Double precio;
    byte[] imagen;
    @ManyToOne
    @JoinColumn(name = "Marca_id_Marca")
    Marca marca;

    public Producto() {
    }

}

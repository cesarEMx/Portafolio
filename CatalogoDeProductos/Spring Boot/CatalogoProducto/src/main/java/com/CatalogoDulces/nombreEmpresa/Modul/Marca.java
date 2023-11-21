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
@Table(name = "marcas")
public class Marca {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_Marca")
    long id;
    @Column(name = "nombre")
    String nombre;
    @Column(name = "descripcion")
    String descripcion;
    @Column(name = "precentacion")
    int precentacion;

    public Marca() {
    }
   
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.CatalogoDulces.nombreEmpresa.Repository;

import com.CatalogoDulces.nombreEmpresa.Modul.Producto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author EM_Ce
 */
@Repository
public interface ProductoRepository extends JpaRepository<Producto, Long>{
    
}

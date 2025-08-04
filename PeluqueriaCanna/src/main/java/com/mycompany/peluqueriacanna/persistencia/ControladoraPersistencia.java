
package com.mycompany.peluqueriacanna.persistencia;

import com.mycompany.peluqueriacanna.logica.Duenio;
import com.mycompany.peluqueriacanna.logica.Mascota;
import com.mycompany.peluqueriacanna.persistencia.exceptions.NonexistentEntityException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


public class ControladoraPersistencia {
    DuenioJpaController DuenioJpa= new DuenioJpaController();
    MascotaJpaController MascotaJpa= new MascotaJpaController();

    public void guardar(Duenio duenio, Mascota mascota) {
        // creo en la BD al duenio 
        DuenioJpa.create(duenio);
        // creo en la BD a la mascota 
        MascotaJpa.create(mascota);
    }

    public List<Mascota> traerMascotas() {
        return MascotaJpa.findMascotaEntities();
    }

    public void borrarMascota(int num_cliente) {
        try {
            MascotaJpa.destroy(num_cliente);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Mascota traerMascota(int num_cliente) {
        return MascotaJpa.findMascota(num_cliente);
    }

    public void modificarMascota(Mascota masco) {
        try {
            MascotaJpa.edit(masco);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    public Duenio traerDuenio(int id_duenio) {
        return DuenioJpa.findDuenio(id_duenio);
    }

    public void modificarDuenio(Duenio dueniomasco) {
        try {
            DuenioJpa.edit(dueniomasco);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    
    
    










    
}

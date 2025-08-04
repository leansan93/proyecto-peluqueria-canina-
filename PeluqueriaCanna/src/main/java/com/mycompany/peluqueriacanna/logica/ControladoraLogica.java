 
package com.mycompany.peluqueriacanna.logica;

import com.mycompany.peluqueriacanna.persistencia.ControladoraPersistencia;
import java.util.List;


public class ControladoraLogica {
    ControladoraPersistencia controlPersis= new ControladoraPersistencia();

    public void guardar(String NombMsaco, String Raza, String Observ, 
    String Celduenio, String NombDuenio, String ColorMasc, String Alergico, String AtencionEsp) {
         
        // creamos el dueño asignamos sus valores 
        Duenio duenio= new Duenio ();
        duenio.setNombre(NombDuenio);
        duenio.setCelular(Celduenio);
        
        // Creamos mascota y asignamos sus valores 
        Mascota mascota= new Mascota();
        mascota.setNombre_perro(NombMsaco);
        mascota.setColor(ColorMasc);
        mascota.setAlergico(Alergico);
        mascota.setAtencion_especial(AtencionEsp);
        mascota.setObservaciones(Observ);
        mascota.setRaza(Raza);
        mascota.setDuenio(duenio); 
        
        // y lo guardo en la controladora de persistencia 
        controlPersis.guardar(duenio, mascota);
    }

    public List <Mascota>  traerMascotas() {
            return controlPersis.traerMascotas() ;
    }

    public void borrarMascota(int num_cliente) {
        controlPersis.borrarMascota(num_cliente);
    }

    public Mascota traerMascota(int num_cliente) {
        return controlPersis.traerMascota(num_cliente);
    }

     

    

    public void modificarMascota(Mascota masco, String NombMsaco, String Raza, String Observ, String ColorMasc, String Alergico, String AtencionEsp, String Celduenio, String NombDuenio) {
        masco.setNombre_perro(NombMsaco);
        masco.setRaza(Raza);
        masco.setColor(ColorMasc);
        masco.setObservaciones(Observ);
        masco.setAtencion_especial(AtencionEsp);
        masco.setAlergico(Alergico);
        
        // modifico la mascota
        controlPersis.modificarMascota(masco);
        
        // busco al dueño en un metodo auxiliar 
        Duenio dueniomasco= this.buscarDuenio(masco.getDuenio().getId_duenio());
        
        // luego que devuelve el duenio el metodo buscarDuenio se modifica el duenio 
        dueniomasco.setCelular(Celduenio);
        dueniomasco.setNombre(NombDuenio);
        
        
        this.modificarDuenio(dueniomasco);
    }
    
    // metodo auxiliar para buscar al dueño de la mascota con su id en control persis
    private Duenio buscarDuenio(int id_duenio) {
      return controlPersis.traerDuenio(id_duenio);
    }

    private void modificarDuenio(Duenio dueniomasco) {
        controlPersis.modificarDuenio(dueniomasco);
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}

package com.libreria.controladores;

import com.libreria.entidades.Autor;
import com.libreria.errores.ErrorServicio;
import com.libreria.services.AutorService;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/")
public class AutorControlador {

    @Autowired
    private AutorService autorService;

    @GetMapping("/agregarAutor")
    public String agregarAutor() {
        return "agregarAutor.html";
    }

    @PostMapping("/agregarAutor")
    public String agregarAutor(@RequestParam String nombre, @RequestParam String apellido, ModelMap model) {
        System.out.println("Nombre: " + nombre);
        System.out.println("Apellido: " + apellido);
        System.out.println("----------");

        try {
            autorService.agregarAutor(nombre, apellido);
            model.addAttribute("exito", "Autor cargado correctamente");
        } catch (Exception ex) {
            java.util.logging.Logger.getLogger(PortalControlador.class.getName()).log(Level.SEVERE, null, ex);
            model.put("error", ex.getMessage());
            model.put("nombre", nombre);
            model.put("apellido", apellido);
        }
        return "agregarAutor.html";
    }

    @GetMapping("/listadoAutores")
    public String listarAutores(String id, ModelMap model) throws ErrorServicio{
        List<Autor> autores = autorService.listarAutores();  //como se valida si vuelve nulo??
        model.put("autores", autores);
        return "listarAutores.html";
    }
    
    @DeleteMapping("/eliminarAutor")
    public String eliminarAutor(@RequestParam String id){
        try {
            autorService.eliminarAutor(id);
        } catch (ErrorServicio ex) {
            Logger.getLogger(AutorControlador.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "listarAutores.html";
    }
}
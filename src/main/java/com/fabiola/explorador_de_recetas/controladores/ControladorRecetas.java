package com.fabiola.explorador_de_recetas.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.HashMap;

@Controller
public class ControladorRecetas {

    private static String[] listaRecetas = {"Pizza", "Espagueti", "Lasaña"};
    private static HashMap<String, String []> recetasConIngredientes = new HashMap<String, String[]>();

    public ControladorRecetas() {
        String [] pizza = {"Pan", "Salsa de tomate", "Queso", "Pepperoni"};
        recetasConIngredientes.put("Pizza", pizza);
        String [] espagueti = {"Pasta", "Salsa de tomate", "Carne molida", "Queso parmesano"};
        recetasConIngredientes.put("Espagueti", espagueti);
        String [] lasaña = {"Pasta", "Salsa de tomate", "Queso", "Albahaca", "Espinaca", "Champiñones"};
        recetasConIngredientes.put("Lasaña", lasaña);
    }

    @GetMapping("/recetas")
    public String obtenerTodasLasRecetas(Model modelo){
        modelo.addAttribute("listaRecetas", listaRecetas );
        return "recetas.jsp";
    }

    @GetMapping("receta/{nombre}")
    public String obtenerRecetaPorNombre(Model modelo, @PathVariable("nombre") String nombre){
        if(recetasConIngredientes.containsKey(nombre)){
            modelo.addAttribute("encontado", "Receta encontrada");
            modelo.addAttribute("detalle", recetasConIngredientes.get(nombre));
            modelo.addAttribute("nombre", nombre);
        }else{
            modelo.addAttribute("noEncontrado", "Receta NO encontrada");
        }
        return "detalleReceta.jsp";
    }
}

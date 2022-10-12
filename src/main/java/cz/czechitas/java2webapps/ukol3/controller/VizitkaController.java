package cz.czechitas.java2webapps.ukol3.controller;

import cz.czechitas.java2webapps.ukol3.entity.Vizitka;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Kontroler obsluhující zobrazování vizitek.
 */
@Controller
public class VizitkaController {
 private List<Vizitka> udajeVizitka= List.of(
         new Vizitka("Jitka Dolejšová","Domika s r.o.","Dačického 7", "Praha 4, 140 00","jitkadolejsova@seznam.cz","737830066","www.domika.name"),
         new Vizitka("Zuzana Tučanová","IKEM","Vídeňská 1958","14021 Praha 4","kardiochirurgie@ikem.cz","+420 776292211","www.ikem.cz"),
         new Vizitka("Dominik Dolejš","Planeo"," U Sanitasu 1621","251 01 Říčany","dominikdolejs@planeo.cz","+420 323 204 584","www.planeo.cz"),
         new Vizitka("Radomír Dolejš","Advokáti s r.o.","Dačického 7","Praha 4, 140 00",null,"+420 775628064",null)
          );
  @GetMapping("/")
  public ModelAndView seznam() {
      ModelAndView modelAndView = new ModelAndView("/seznam");
      modelAndView.addObject("seznamVizitek",udajeVizitka);
    return modelAndView;
  }

  @GetMapping("/detail/{id}")
  public ModelAndView detail(@PathVariable int id) {
      ModelAndView modelAndView = new ModelAndView("/detail");
      modelAndView.addObject("jedenUdaj",udajeVizitka.get(id));
      return modelAndView;
  }
}

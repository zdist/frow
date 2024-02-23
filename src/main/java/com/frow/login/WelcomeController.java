package com.frow.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class WelcomeController {
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String goToHomePage(ModelMap model) {
		model.put("name", "NAZgemini");
		return "index";
	}
	@RequestMapping(value="/index", method = RequestMethod.GET)
	public String goToBackToHomePage(ModelMap model) {
		return "index";
	}
	@RequestMapping(value="/about", method = RequestMethod.GET)
	public String goToAboutPage(ModelMap model) {
		return "about/index";
	}
	@RequestMapping(value="/schedule", method = RequestMethod.GET)
	public String goToSchedulePage(ModelMap model) {
		return "schedule/index";
	}
	@RequestMapping(value="/designers", method = RequestMethod.GET)
	public String goToDesignersPage(ModelMap model) {
		return "designers/index";
	}
	@RequestMapping(value="/yeezy", method = RequestMethod.GET)
	public String goToYeezyPage(ModelMap model) {
		return "designers/yeezy";
	}
	@RequestMapping(value="/prada", method = RequestMethod.GET)
	public String goToPradaPage(ModelMap model) {
		return "designers/prada";
	}
	@RequestMapping(value="/gallery", method = RequestMethod.GET)
	public String goToGalleryPage(ModelMap model) {
		return "gallery/index";
	}
	@RequestMapping(value="/watch-live", method = RequestMethod.GET)
	public String goToWatchLivePage(ModelMap model) {
		return "watch-live/index";
	}
	// @RequestMapping(value="/sign-in", method = RequestMethod.GET)
	// public String goToSignInPage(ModelMap model) {
	// 	return "sign-in/index";
	// }
	@RequestMapping(value="/cart", method = RequestMethod.GET)
	public String goToSignInPage(ModelMap model) {
		return "cart/index";
	}
}
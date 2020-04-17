package net.shopping.hello;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView; //�����Ͽ����߰�


@Controller
public class guestController {	
	private static final Logger logger=LoggerFactory.getLogger(guestController.class);
	
	@Inject
	@Autowired
	guestDAO dao; 
	
	
	
	@Autowired
	private ServletContext  application;
	
	
	@RequestMapping(value="/#", method=RequestMethod.GET)
	public String guest_write() {
	   return "#";
	}//end
	
	
	
}//BoardController class END












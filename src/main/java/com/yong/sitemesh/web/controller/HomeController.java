package com.yong.sitemesh.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * Created by Administrator on 2016/8/12 0012.
 */
@Controller
public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @RequestMapping(value = "/pages/{type}/{page}", method = RequestMethod.GET)
    public String pagesOfTypes(Locale locale, Model model, @PathVariable(value = "type") String type, @PathVariable(value = "page") String page) {
        logger.info("Welcome page! The client locale is {}.", locale);

        Date date = new Date();
        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

        String formattedDate = dateFormat.format(date);

        model.addAttribute("serverTime", formattedDate);

        return "pages/" + type + "/" + page;
    }

    @RequestMapping(value = "/pages/{page}", method = RequestMethod.GET)
    public String pages(Locale locale, Model model, @PathVariable(value = "page") String page) {
        logger.info("Welcome page! The client locale is {}.", locale);

        Date date = new Date();
        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

        String formattedDate = dateFormat.format(date);

        model.addAttribute("serverTime", formattedDate);

        return "pages/" + page;
    }
}

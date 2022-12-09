package com.example.user;

import com.example.user.UserServiceImpl;
import com.example.user.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

@Controller
@RequestMapping(value="/login")
public class LoginController {
    @Autowired
    UserServiceImpl service;

    @RequestMapping(value = "/login", method= RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/nologin", method= RequestMethod.GET)
    public String nologin() {
        return "nologin";
    }

    @RequestMapping(value = "/loginOk", method= RequestMethod.POST)
    public String loginCheck(HttpSession session, UserVo vo) {
        String returnURL = "";
        if (session.getAttribute("login") != null) {
            session.removeAttribute("login");
        }

        UserVo loginvo = service.getUser(vo);
        if (loginvo != null) {
            System.out.println("로그인 성공!");
            session.setAttribute("login",loginvo);
            returnURL = "redirect:/board/list";
        }
        else {
            System.out.println("로그인 실패!");
            returnURL = "redirect:/login/nologin";
        }
        return returnURL;
    }

    @RequestMapping(value= "/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login/login";
    }
}

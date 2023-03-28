package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import model.Person;

@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /* Personオブジェクトを作成 */ 
        Person person = new Person();
        person.setName("鹿野 楢男");           
        person.setAge(33);   
        person.setGreeting("Hello World");       
        
		/*ObjectMapperを使用して、PersonオブジェクトをJSON文字列に変換*/
        ObjectMapper mapper = new ObjectMapper();
        String json = mapper.writeValueAsString(person);

		/*レスポンスにJSONを設定*/
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);
    }
}
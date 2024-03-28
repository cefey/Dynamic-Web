package com.example.golovlev.Servlets;

import com.example.golovlev.Models.Aggrement;
import com.example.golovlev.Models.TypeAggrement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/typeAggrement")
public class TypeAggrementServlet extends HttpServlet {
    public TypeAggrementServlet(){
        super();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Aggrement[] aggrement = new Aggrement[]{
                new Aggrement(1L, 1234, 3124, 8911, "СФ231", "24.06.2023", "12.10.2023"),
                new Aggrement(2L, 1235, 3125, 8912, "ТН1210", "14.02.2023", "09.11.2023")
        };

        request.setAttribute("aggrement", aggrement);

        TypeAggrement[] typeAggrement = new TypeAggrement[]{
                new TypeAggrement(1L, "дилерский", aggrement[0]),
                new TypeAggrement(2L, "управления", aggrement[1])
        };
        request.setAttribute("typeAggrement", typeAggrement);
        request.getRequestDispatcher("views/typeAggrement.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        doGet(request, response);
    }
}
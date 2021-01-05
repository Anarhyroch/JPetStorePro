package org.csu.jpetstore.web.servlet;

import org.csu.jpetstore.domain.Order;
import org.csu.jpetstore.service.OrderService;
import org.csu.jpetstore.service.impl.OrderServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class OrderServlet extends HttpServlet {
    private static final String VIEW_ORDER = "/WEB-INF/order/ViewOrder.jsp";
    private OrderService orderService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        orderService = new OrderServiceImpl();
        int id = Integer.parseInt(req.getParameter("id"));
        Order order = orderService.getOrder(id);
        HttpSession session = req.getSession();
        session.setAttribute("order", order);
        req.getRequestDispatcher(VIEW_ORDER).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}

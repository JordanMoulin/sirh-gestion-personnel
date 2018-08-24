package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;

public class EditerCollaborateurController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String matriculeParam = req.getParameter("matricule");
		if (StringUtils.isBlank(matriculeParam)) {
			resp.sendError(400, "Un matricule est attendu");
		} else {
			resp.setCharacterEncoding("UTF-8");
			resp.getWriter()
					.write("<html><head><meta charset=\"utf-8\" /></head><body><h1>Edition de collaborateur</h1>"
							+ "<ul>" + "<li>Matricule : " + matriculeParam + "</li></ul></body></html>");
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String text = "Les paramètres suivants sont incorrects :";
		String matriculeParam = req.getParameter("matricule");
		String titreParam = req.getParameter("titre");
		String nomParam = req.getParameter("nom");
		String prenomParam = req.getParameter("prenom");
		if (StringUtils.isBlank(matriculeParam) || StringUtils.isBlank(titreParam) || StringUtils.isBlank(nomParam)
				|| StringUtils.isBlank(prenomParam)) {

			if (StringUtils.isBlank(matriculeParam)) {
				text += " matricule";
			}
			if (StringUtils.isBlank(titreParam)) {
				text += " titre";
			}
			if (StringUtils.isBlank(nomParam)) {
				text += " nom";
			}
			if (StringUtils.isBlank(prenomParam)) {
				text += " prenom";
			}
			resp.sendError(400, text);
		} else {
			resp.setCharacterEncoding("UTF-8");
			resp.getWriter()
					.write("<html><head><meta charset=\"utf-8\" /></head><body><h1>Edition de collaborateur</h1>"
							+ "<p>Création d'un collaborateur avec les informations suivantes :<p>" + "<ul>"
							+ "<li>Matricule : " + matriculeParam + "</li>" + "<li>Titre : " + titreParam + "</li>"
							+ "<li>Nom : " + nomParam + "</li>" + "<li>Prénom : " + prenomParam
							+ "</li></ul></body></html>");
			resp.setStatus(201);
		}
	}

	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();

		String text = "Les paramètres suivants sont incorrects :";
		String matriculeParam = req.getParameter("matricule");
		String titreParam = req.getParameter("titre");
		String nomParam = req.getParameter("nom");
		String prenomParam = req.getParameter("prenom");

		if (StringUtils.isBlank(matriculeParam) || StringUtils.isBlank(titreParam) || StringUtils.isBlank(nomParam)
				|| StringUtils.isBlank(prenomParam)) {

			if (StringUtils.isBlank(matriculeParam)) {
				text += " matricule";
			}
			if (StringUtils.isBlank(titreParam)) {
				text += " titre";
			}
			if (StringUtils.isBlank(nomParam)) {
				text += " nom";
			}
			if (StringUtils.isBlank(prenomParam)) {
				text += " prenom";
			}
			resp.sendError(400, text);
		} else {
			resp.setCharacterEncoding("UTF-8");
			session.setAttribute("modif", 0);
			resp.getWriter()
					.write("<html><head><meta charset=\"utf-8\" /></head><body><h1>Edition de collaborateur</h1>"
							+ "<p>Modification d'un collaborateur avec les informations suivantes :<p>" + "<ul>"
							+ "<li>Matricule : " + matriculeParam + "</li>" + "<li>Titre : " + titreParam + "</li>"
							+ "<li>Nom : " + nomParam + "</li>" + "<li>Prénom : " + prenomParam
							+ "</li></ul></body></html>");
		}
	}
}

package com.wintime.dao;

import java.io.IOException;
import java.security.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Scanner;

import org.apache.http.HttpResponse;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.google.gson.Gson;
import com.wintime.connexion.HttpCallActions;
import com.wintime.model.Droitlocal;
import com.wintime.model.Userlocal;

import Fonction.Validator;

public class UserDAO implements UserService {
	Gson g = new Gson();

	public UserDAO() {

	}

	@Override
	public Userlocal getUsers(String login, String pasword, String bd) {
		// TODO Auto-generated method stub
		/*
		 * try { System.out.println("je passe la la"); String endpoint="api/users";
		 * HttpCallActions.GET(endpoint, HttpCallActions.getSSLCustomClient());
		 * HttpResponse httpResponse=HttpCallActions.getResponse();
		 * System.out.println(httpResponse.getStatusLine().getStatusCode());
		 * 
		 * //Printing the response Scanner sc=new
		 * Scanner(httpResponse.getEntity().getContent()); while(sc.hasNext()) {
		 * System.out.print(sc.next()); }
		 * 
		 * } catch (UnsupportedOperationException | IOException e) { // TODO
		 * Auto-generated catch block e.printStackTrace(); }
		 */

		Scanner sc = null;
		String jsonString = "";
		try {
			String endpoint = "users/connexionpost";
			String jsonBody = "{\n" + "    \"name\": \"" + login + "\",\n" + "    \"password\": \"" + pasword + "\",\n"
					+ "    \"user\": \"" + bd + "\"\n" + "}";
			// Call the request
			HttpCallActions.POST(endpoint, jsonBody, HttpCallActions.getSSLCustomClient());
			// Get the response  ThePostman
			HttpResponse response = HttpCallActions.getResponse();
			// System.out.println("Status-code->" +
			// response.getStatusLine().getStatusCode());
			// Print the response
			sc = new Scanner(response.getEntity().getContent());

			while (sc.hasNext()) {
				jsonString += sc.next();
			}

			// Userlocal user = g.fromJson(jsonString, Userlocal.class) ;
			System.out.println("-------------------------------------");
			System.out.println(jsonString);
			System.out.println("-------------------------------------");
			jsonString = jsonString.trim();
			JSONObject row = new JSONObject(jsonString);
			// System.out.println(row.getString("value"));
			String value = Validator.recursekeys(row, "value");
			// String droit = Validator.recursekeys(row, "droit");
			if (Boolean.parseBoolean(value)) {
				// Create userloclal
				String jsonuser = Validator.recursekeys(row, "user");
				JSONObject rowuser = new JSONObject(jsonuser);
				Userlocal userlocal = new Userlocal();
				

				try {
					String id = Validator.recursekeys(rowuser, "id");
					userlocal.setId(Integer.parseInt(id));

				} catch (Exception e) {
					System.err.println(e.getMessage());
				}

				try {
					String nom = Validator.recursekeys(rowuser, "nom");
					System.out.println(nom);
					userlocal.setNom(nom);
					userlocal.setLogin(nom);
				} catch (Exception e) {
					System.err.println(e.getMessage());
				}

				try {
					String prenom = Validator.recursekeys(rowuser, "prenom");
					userlocal.setPrenom(prenom);
				} catch (Exception e) {
					System.err.println(e.getMessage());
				}

				try {
					String numerotel = Validator.recursekeys(rowuser, "numerotel");
					userlocal.setPhone(numerotel);
				} catch (Exception e) {
					System.err.println(e.getMessage());
				}

				/*
				 * try { String description = Validator.recursekeys(rowuser, "description");
				 * userlocal.setGrade(description); }catch (Exception e) {
				 * System.err.println(e.getMessage()); }
				 */

				try {
					String idfonction = Validator.recursekeys(rowuser, "idfonction");

					userlocal.setIdfonction(idfonction);
				} catch (Exception e) {
					System.err.println(e.getMessage());
				}

				try {
					String actif = Validator.recursekeys(rowuser, "actif");
					userlocal.setActif(Integer.parseInt(actif));
				} catch (Exception e) {
					System.err.println(e.getMessage());
				}

				try {
					String dates = Validator.recursekeys(rowuser, "dates");
					userlocal.setDatecreation(dates);// convertir en date comprehensible par les HUmain plus tard
				} catch (Exception e) {
					System.err.println(e.getMessage());
				}

				try {
					String code = Validator.recursekeys(rowuser, "code");
					userlocal.setCode(code);
				} catch (Exception e) {
					System.err.println(e.getMessage());
				}

				try {
					String libelle = Validator.recursekeys(rowuser, "libelle");
					userlocal.setGrade(libelle);
				} catch (Exception e) {
					System.err.println(e.getMessage());
				}

				try {
					String connecte = Validator.recursekeys(rowuser, "connecte");
					userlocal.setConnecte(Integer.parseInt(connecte));
				} catch (Exception e) {
					System.err.println(e.getMessage());
				}

				try {
					String picture = Validator.recursekeys(rowuser, "picture");
					userlocal.setPicture(picture);
				} catch (Exception e) {
					System.err.println(e.getMessage());
				}

				try {
					String mail = Validator.recursekeys(rowuser, "mail");
					userlocal.setMail(mail);
				} catch (Exception e) {
					System.err.println(e.getMessage());
				}

				// creation de Userlocal

				// userlocal.setPasword // ne pas recuperer le mot de passe
				
				String droit = Validator.recursekeys(row, "droit");
				JSONArray jsonDroit = new JSONArray(droit);
				List<Droitlocal> listDroit = new ArrayList<Droitlocal>();
				for (int i = 0; i < jsonDroit.length(); i++) {
					Droitlocal droits = new Droitlocal();
					JSONObject rowdroit = jsonDroit.getJSONObject(i);

					String iddroit = Validator.recursekeys(rowdroit, "id");
					String codedroit = Validator.recursekeys(rowdroit, "code");
					String libeles = Validator.recursekeys(rowdroit, "libele");
					String datecreation = Validator.recursekeys(rowdroit, "datecreation");
					

					// String datescreation = Validator.recursekeys(rowdroit, "dates");
					droits.setId(Integer.parseInt(iddroit));
					droits.setCode(codedroit);
					droits.setLibelle(libeles);
					droits.setDatecreation(datecreation);// convertir en date comprehensible par l etre humain
					listDroit.add(droits);
					System.out.println("ici llallla");
				}
				userlocal.setListDroit(listDroit);
				
				return userlocal;
			}
			// System.out.println(value);

		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			e.getMessage();
		}

		return null;
	}

	@Override
	public Userlocal getUsersExiste(String login, String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Userlocal creatUsers(String login, String passwod, String mail, String nom, String prenom, String grade,
			String phone, String path) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Userlocal> AllUser(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Userlocal getUsersCode(String code) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Userlocal> AllUserText(String text, String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updatprofil(Userlocal userupdate) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int requetteeffectue(String codeuser, String action) {
		UserDAO dao = new UserDAO();
		return doaction(codeuser, action);
	}

	@Override
	public int doaction(String codeuser, String action) {

		return 0;

	}

}

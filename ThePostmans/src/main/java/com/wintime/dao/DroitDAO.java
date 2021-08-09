/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.wintime.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.apache.http.HttpResponse;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.wintime.connexion.HttpCallActions;
import com.wintime.model.Droitlocal;
import com.wintime.model.Userlocal;

import Fonction.Validator;

/**
 *
 * @author Administrateur
 */
public class DroitDAO implements DroitService {
	Connection connection;

	public DroitDAO() {

	}

	@Override
	public Droitlocal getDroit(String code) {

		List<Droitlocal> droitList = null;
		String sql = "";
		try {

			if (connection == null) {
				System.out.println("connexion est nul");
				return null;
			}
			if (!code.isEmpty()) {
				sql = " SELECT* FROM droit where code = '" + code + "'";
			}
			PreparedStatement psmt = connection.prepareStatement(sql);
			ResultSet resultSet = psmt.executeQuery();
			Droitlocal droit;
			droitList = new ArrayList<>();
			while (resultSet.next()) {
				droit = new Droitlocal();
				droit.setId(resultSet.getInt("id"));
				droit.setCode(resultSet.getString("code"));
				droit.setLibelle(resultSet.getString("libele"));
				droit.setDatecreation(resultSet.getString("dates")); // convertir en date humaine
				droitList.add(droit);
			}
			if (droitList.size() > 0) {
				return droitList.get(droitList.size() - 1);
			}
		} catch (SQLException ex) {
			System.out.println("messagesTermianauxSelect " + ex.getMessage());
			Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return null;

	}

	@Override
	public List<Droitlocal> getAllDroit(String CodeUser) {
		 System.out.println("je passe ici la la la ddd");
	    List<Droitlocal> droitList= getAllDroit();
	    
		/*List<Droitlocal> droitUser = getAllDroitUser(CodeUser);
		
		
		for (Droitlocal dro : droitUser) {
			for (Droitlocal drois : droitList) {
				if (dro.getCode().equals(drois.getCode())) {
					/////////////////// drois.setExite("true");
				}

			}
		}*/
		return droitList;
	}

	@Override
	public Droitlocal createDroit(Droitlocal droit) {
		Droitlocal droi = null;
		if (droit == null) {
			try {
				Timestamp today = new Timestamp(Calendar.getInstance().getTimeInMillis());
				if (connection == null) {
					System.out.println("messages je suis nul");
				}
				String sql = "INSERT INTO droit( code, libele, dates)VALUES ( ?, ?, ?);";
				PreparedStatement psmt = connection.prepareStatement(sql);
				psmt.setString(1, droit.getCode());
				psmt.setString(2, droit.getLibelle());
				psmt.setTimestamp(3, today);
				psmt.executeUpdate();
				droi = getDroit(droit.getCode());
			} catch (SQLException ex) {
				System.out.println("LogMessagetelephcomptesInsert " + ex.getMessage());
			}
		}
		return droi;
	}

	// list des droits d'un Utilisateur
	@Override
	public List<Droitlocal> getAllDroitUser(String CodeUser) {
		//System.out.println("ddddddddddddddddddddddddddddd");
		List<Droitlocal> droitList = null;

		Scanner sc = null;
		String jsonString = "";
		try {
			String endpoint = "droit/getalldroituser";
		
			String jsonBody = "{\"code\": \"" + CodeUser +"\"}";
		//	System.out.println(endpoint);
			HttpCallActions.POST(endpoint, jsonBody, HttpCallActions.getSSLCustomClient());
			HttpResponse response = HttpCallActions.getResponse();
			sc = new Scanner(response.getEntity().getContent());

			while (sc.hasNext()) {
				jsonString += sc.next();
			}

			System.out.println("-------------------------------------");
			System.out.println(jsonString);
			System.out.println("-------------------------------------");
			jsonString = jsonString.trim();
			JSONObject row = new JSONObject(jsonString);
			String value = Validator.recursekeys(row, "value");
			// String droit = Validator.recursekeys(row, "droit");
			if (Boolean.parseBoolean(value)) {
				droitList = new ArrayList<>();
				String droit = Validator.recursekeys(row, "droit");
				JSONArray jsonDroit = new JSONArray(droit);

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
					droitList.add(droits);
					System.out.println("ici llallla");
				}

			}

		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			e.getMessage();
		}

		
		
		
		return droitList;
		
		
		
	}

	// liste de tous les droits
	@Override
	public List<Droitlocal> getAllDroit() {

		List<Droitlocal> droitList = null;

		Scanner sc = null;
		String jsonString = "";
		try {
			String endpoint = "droit/getalldroit";
			String jsonBody = "{}";
			HttpCallActions.POST(endpoint, jsonBody, HttpCallActions.getSSLCustomClient());
			HttpResponse response = HttpCallActions.getResponse();
			sc = new Scanner(response.getEntity().getContent());

			while (sc.hasNext()) {
				jsonString += sc.next();
			}

			System.out.println("-------------------------------------");
			System.out.println(jsonString);
			System.out.println("-------------------------------------");
			jsonString = jsonString.trim();
			JSONObject row = new JSONObject(jsonString);
			String value = Validator.recursekeys(row, "value");
			// String droit = Validator.recursekeys(row, "droit");
			if (Boolean.parseBoolean(value)) {
				droitList = new ArrayList<>();
				String droit = Validator.recursekeys(row, "droit");
				JSONArray jsonDroit = new JSONArray(droit);

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
					droitList.add(droits);
					System.out.println("ici llallla");
				}

			}

		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			e.getMessage();
		}

		return droitList;
	}

	@Override
	public int insierDroit(String codeuser, String codedroi) {
		int insetnote = 0;
		if (codeuser != null && codedroi != null) {
			List<Droitlocal> droitUser = getAllDroitUser(codeuser);
			String[] tbacode = codedroi.split(",");
			Timestamp today = new Timestamp(Calendar.getInstance().getTimeInMillis());
			String chaine = "(";
			for (String codedroit : tbacode) {
				int exite = 0;
				for (Droitlocal drois : droitUser) {
					if (codedroit.equals(drois.getCode())) {
						exite = 1;
					}
				}
				if (exite == 0)
					chaine += "'" + codeuser + "','" + codedroit + "','" + today + "'),(";
			}

			try {
				if (connection == null) {
					System.out.println("messages je suis nul");
				}

				if (chaine.length() > 2) {
					chaine = chaine.substring(0, chaine.length() - 2);
					String sqlab = "INSERT INTO user_droit(codeuser, codedroit, datecreation)  values " + chaine + ";";
					System.out.println(sqlab);
					PreparedStatement psmt = connection.prepareStatement(sqlab);
					psmt.executeUpdate();
					return 1;
				}

			} catch (SQLException ex) {
				System.out.println("LogMessagetelephcomptesInsert " + ex.getMessage());
			}
		}
		return 0;
	}

	@Override
	public int deletDroit(String codeuser, String codedroi) {
		int insetnote = 0;
		if (codeuser != null && codedroi != null) {
			List<Droitlocal> droitUser = getAllDroitUser(codeuser);
			String[] tbacode = codedroi.split(",");
			Timestamp today = new Timestamp(Calendar.getInstance().getTimeInMillis());
			String chaine = "(";
			for (String codedroit : tbacode) {
				int exite = 0;
				for (Droitlocal drois : droitUser) {
					if (codedroit.equals(drois.getCode())) {
						exite = 1;
					}
				}
				if (exite == 1)
					chaine += "codeuser='" + codeuser + "' and   codedroit= '" + codedroit + "')or(";
			}

			try {
				if (connection == null) {
					System.out.println("messages je suis nul");
				}

				if (chaine.length() > 2) {
					chaine = chaine.substring(0, chaine.length() - 3);
					String sqlab = "DELETE FROM user_droit WHERE " + chaine + ";";
					System.out.println(sqlab);
					PreparedStatement psmt = connection.prepareStatement(sqlab);
					psmt.executeUpdate();
					return 1;
				}

			} catch (SQLException ex) {
				System.out.println("LogMessagetelephcomptesInsert " + ex.getMessage());
			}
		}
		return 0;
	}

	@Override
	public int deleteUser(String codeuser) {
		int insetnote = 0;
		if (codeuser != null) {
			// List<Droitlocal>droitUser= getAllDroitUser(codeuser);
			String[] tbusers = codeuser.split(",");
			Timestamp today = new Timestamp(Calendar.getInstance().getTimeInMillis());
			String chaine = "(";
			for (String codeuse : tbusers) {
				// int exite=0;
				/*
				 * for(Droitlocal drois:droitUser){ if(codedroit.equals(drois.getCode())){
				 * exite=1; } } if(exite==1)
				 */
				chaine += "code='" + codeuse + "')or(";
			}

			try {
				if (connection == null) {
					System.out.println("messages je suis nul");
				}

				if (chaine.length() > 2) {
					chaine = chaine.substring(0, chaine.length() - 3);
					String sqlab = "DELETE FROM users WHERE " + chaine + ";";
					System.out.println(sqlab);
					PreparedStatement psmt = connection.prepareStatement(sqlab);
					psmt.executeUpdate();
					return 1;
				}

			} catch (SQLException ex) {
				System.out.println("LogMessagetelephcomptesInsert " + ex.getMessage());
			}
		}
		return 0;

	}

	@Override
	public int activeUser(String codeuser) {
		int insetnote = 0;
		if (codeuser != null) {
			// List<Droitlocal>droitUser= getAllDroitUser(codeuser);
			String[] tbusers = codeuser.split(",");
			Timestamp today = new Timestamp(Calendar.getInstance().getTimeInMillis());
			String chaine = "(";
			for (String codeuse : tbusers) {
				// int exite=0;
				/*
				 * for(Droitlocal drois:droitUser){ if(codedroit.equals(drois.getCode())){
				 * exite=1; } } if(exite==1)
				 */
				chaine += "code='" + codeuse + "')or(";
			}

			try {
				if (connection == null) {
					System.out.println("messages je suis nul");
				}

				if (chaine.length() > 2) {
					chaine = chaine.substring(0, chaine.length() - 3);
					String sqlab = "UPDATE  users set  actif=1 WHERE " + chaine + ";";
					System.out.println(sqlab);
					PreparedStatement psmt = connection.prepareStatement(sqlab);
					psmt.executeUpdate();
					return 1;
				}

			} catch (SQLException ex) {
				System.out.println("LogMessagetelephcomptesInsert " + ex.getMessage());
			}
		}
		return 0;

	}

	@Override
	public int desactiveUser(String codeuser) {
		int insetnote = 0;
		if (codeuser != null) {
			// List<Droitlocal>droitUser= getAllDroitUser(codeuser);
			String[] tbusers = codeuser.split(",");
			Timestamp today = new Timestamp(Calendar.getInstance().getTimeInMillis());
			String chaine = "(";
			for (String codeuse : tbusers) {
				// int exite=0;
				/*
				 * for(Droitlocal drois:droitUser){ if(codedroit.equals(drois.getCode())){
				 * exite=1; } } if(exite==1)
				 */
				chaine += "code='" + codeuse + "')or(";
			}

			try {
				if (connection == null) {
					System.out.println("messages je suis nul");
				}

				if (chaine.length() > 2) {
					chaine = chaine.substring(0, chaine.length() - 3);
					String sqlab = "UPDATE  users set  actif=0 WHERE " + chaine + ";";
					System.out.println(sqlab);
					PreparedStatement psmt = connection.prepareStatement(sqlab);
					psmt.executeUpdate();
					return 1;
				}

			} catch (SQLException ex) {
				System.out.println("LogMessagetelephcomptesInsert " + ex.getMessage());
			}
		}
		return 0;
	}

}
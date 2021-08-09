package com.wintime.model;

import java.util.Date;
import java.util.List;

/**
 *
 * @author Administrateur
 */
public class Userlocal {
	private int id;
	private String idfonction;
	private String Code;
	private String Login;
	private String Pasword;
	private List<Droitlocal> listDroit;
	private String datecreation;
	private String mail;
	private String nom;
	private String prenom;
	private String grade;
	private String picture;
	private String phone;
	private int connecte = 0;
	private int actif = 0;

	/*
	 * 
	 * {"id":1,"nom":"sadjang","prenom":"achille","password":"Avompetit1985",
	 * "numerotel":"672778594","idfonction":"1","description":"supper
	 * Admin","actif":1,"dates":"2021-07-28T08:39:41.093Z","libelle":"super Admin"}
	 */

	/**
	 * 
	 */
	
	
	public Userlocal() {
	}

	public String getIdfonction() {
		return idfonction;
	}

	public void setIdfonction(String idfonction) {
		this.idfonction = idfonction;
	}

	public int getActif() {
		return actif;
	}

	public void setActif(int actif) {
		this.actif = actif;
	}

	public int getConnecte() {
		return connecte;
	}

	public void setConnecte(int connecte) {
		this.connecte = connecte;
	}

	public String getPicture() {
		return picture;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getDatecreation() {
		return datecreation;
	}

	public void setDatecreation(String datecreation) {
		this.datecreation = datecreation;
	}

	public int getId() {
		return id;
	}

	public String getCode() {
		return Code;
	}

	public void setCode(String Code) {
		this.Code = Code;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLogin() {
		return Login;
	}

	public void setLogin(String Login) {
		this.Login = Login;
	}

	public String getPasword() {
		return Pasword;
	}

	public void setPasword(String Pasword) {
		this.Pasword = Pasword;
	}

	public List<Droitlocal> getListDroit() {
		return listDroit;
	}

	public void setListDroit(List<Droitlocal> listDroit) {
		this.listDroit = listDroit;
	}

}

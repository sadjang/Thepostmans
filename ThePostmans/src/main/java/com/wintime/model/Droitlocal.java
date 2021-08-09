package com.wintime.model;

import java.util.Date;

/**
 *
 * @author Administrateur
 */
public class Droitlocal {
    private int id;
    private String code;
    private String libelle;
    private String datecreation;
    private String exite="false";
    public Droitlocal() {
    }

  
    public String getExite() {
		return exite;
	}


	public void setExite(String exite) {
		this.exite = exite;
	}


	public int getId() {
        return id;
    }

    public String getDatecreation() {
        return datecreation;
    }

    public void setDatecreation(String datecreation) {
        this.datecreation = datecreation;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getLibelle() {
        return libelle;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }
    
}
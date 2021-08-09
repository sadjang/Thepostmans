/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.wintime.dao;

/**
 *
 * @author Sadjang
 */
public class DroitServiceFactory {
	public enum DroitServiceType {
		USERPRELEVEMENT, COMPTEFICHIER, COMPTEAUTRE
	}

	private static DroitServiceFactory instance = null;

	public static synchronized DroitServiceFactory getInstance() {
		if (instance == null) {
			instance = new DroitServiceFactory();
		}
		return instance;
	}

	private DroitServiceFactory() {
	}

	public DroitService getAccountService(DroitServiceType accountType) {
		System.out.println("users service ");
		if (accountType == DroitServiceType.USERPRELEVEMENT) {
			System.out.println("users service " + DroitServiceType.USERPRELEVEMENT);
			return new DroitDAO();
		} else {
			System.out.println("users service " + 1);
			if (accountType == DroitServiceType.COMPTEFICHIER) {
				return null;
			} else {
				System.out.println("users service " + 2);
				if (accountType == DroitServiceType.COMPTEAUTRE) {
					return null;
				} else {
					System.out.println("users service " + 3);
				}
			}
		}
		return null;

	}

}

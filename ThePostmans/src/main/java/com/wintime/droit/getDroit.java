package com.wintime.droit;

import java.util.List;

import com.wintime.dao.DroitService;
import com.wintime.dao.DroitServiceFactory;
import com.wintime.model.Droitlocal;

/**
 *
 * @author Administrateur
 */
public class getDroit {
	private final DroitService droitService = DroitServiceFactory.getInstance()
			.getAccountService(DroitServiceFactory.DroitServiceType.USERPRELEVEMENT);

	public List<Droitlocal> getListDroit(String codeuser) {
		return droitService.getAllDroit(codeuser);
	}

	public List<Droitlocal> getAllDroitUser(String codeuser) {
		return droitService.getAllDroitUser(codeuser);
	}

	public int addDroit(String codeuser, String codedroit) {
		return droitService.insierDroit(codeuser, codedroit);
	}

	public int delDroit(String codeuser, String codedroit) {
		return droitService.deletDroit(codeuser, codedroit);
	}

	public int delUsers(String codeuser) {
		return droitService.deleteUser(codeuser);
	}

	public int activUsers(String codeuser) {
		return droitService.activeUser(codeuser);
	}

	public int desacactivUsers(String codeuser) {
		return droitService.desactiveUser(codeuser);
	}

}
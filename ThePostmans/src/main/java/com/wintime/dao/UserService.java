package com.wintime.dao;

import com.wintime.model.Userlocal;
import java.util.List;

public interface UserService {
	public Userlocal getUsers(String login, String pasword,String bd);

	public Userlocal getUsersExiste(String login, String email);

	public Userlocal creatUsers(String login, String passwod, String mail, String nom, String prenom, String grade,
			String phone, String path);

	public List<Userlocal> AllUser(String id);

	public Userlocal getUsersCode(String code);

	public List<Userlocal> AllUserText(String text, String id);

	public int updatprofil(Userlocal userupdate);

	public int requetteeffectue(String codeuser, String action);

	public int doaction(String codeuser, String action);

}

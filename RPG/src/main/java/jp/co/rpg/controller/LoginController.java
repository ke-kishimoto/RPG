package jp.co.rpg.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.co.rpg.controller.form.LoginForm;
import jp.co.rpg.dao.UserDao;
import jp.co.rpg.entity.User;

@Controller
public class LoginController {
	@Autowired
	HttpSession session;
	@Autowired
	private UserDao userDao;

	//スタート→ログイン
	@RequestMapping("/login")
	public String login(@ModelAttribute("login") LoginForm form, Model model) {
		return "login";
	}

	//ログイン→ホーム
	@RequestMapping(value = "/home", method = RequestMethod.POST, params="login")
	public String home(@Validated @ModelAttribute("login") LoginForm form, BindingResult bindingResult, Model model) {

		//入力チェック
		if (bindingResult.hasErrors())
			return "login";

		User user = new User(form.getUserId(), form.getPassword());
		List<User> res = userDao.find(user);

		//レコード数1の時、ログインOK
		if(res.size() == 1) {
			user = res.get(0);
			session.setAttribute("user", user);
			return "home";
		}else {
			//1以外はエラー
			model.addAttribute("errMsgLogin", "IDまたはあんごうが正しくありません");
			return "login";
		}
	}
}
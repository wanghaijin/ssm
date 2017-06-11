package com.ssm.test.controller;

import com.github.pagehelper.PageInfo;
import com.ssm.test.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by King on 2017/5/10.
 */
@Controller
public class HomeCotroller {
    @Autowired
    private UserService userService;


//    @RequestMapping(value = "login")
//    @ResponseBody
//    public Map<String,Object> login(@RequestParam("account")String myId,@RequestParam("password")String password ){
//        Map<String,Object> map=new HashMap<String, Object>();
//        try{
//            List<User> users=userService.findOneById(myId,0,0);
//            for(User user:users){
//                if (users.size()==1){
//                    if(user.getPassword().equals(password)){
//                        map.put("code",200);
//                        map.put("admin",user);
//                    }else{
//                        map.put("code",500);//密码错误
//                    }
//                    return map;
//                }
//                map.put("code",404);//未找到用户
//                break;
//            }
//
//
//        }catch (Exception e){
//            map.put("code",-1);
//            e.printStackTrace();
//        }
//        return map;
//    }

    @RequestMapping(value = "find")
    @ResponseBody
    public ModelAndView findAll(@RequestParam(value = "pageNum",defaultValue = "1")Integer pageNum,
                                @RequestParam(value = "pageSize",defaultValue = "5")Integer pageSize){
//        Map<String,Object> map=new HashMap<String, Object>();
        PageInfo pageInfo=userService.findOneById(null,pageNum,pageSize);
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject("pagehelper",pageInfo);
        modelAndView.setViewName("find/find");
//        map.put("total",users.size());
//        map.put("list",users);
        return modelAndView;
    }

//    @RequestMapping(value = "/reader/reader")
//    public String reader(){
//        return "reader/reader";
//    }
//
//    @RequestMapping(value = "/login")
//    public String login(HttpServletRequest request){
//        HttpSession session=request.getSession();
//        String id=request.getParameter("id");
//        User user=userMapper.selectOneById(Integer.getInteger(id));
//        String password=request.getParameter("password");
//       if(user.getPassword()==password){
//           session.setAttribute("admin",user);
//           return "home";
//       }
//       return null;
//    }


}

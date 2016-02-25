package org.zs.hrsystem.action.authority;

import org.zs.hrsystem.action.WebConstant;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
/**
 * 经理（角色）拦截器
 * */
public class MgrAuthorityInterceptor
	extends AbstractInterceptor
{
	public String intercept(ActionInvocation invocation) 
			throws Exception
		{
			//创建ActionContext实例
			ActionContext ctx = ActionContext.getContext();
			//获取HttpSession中的level属性
			String level = (String)ctx.getSession()
				.get(WebConstant.LEVEL);
			//如果level不为null，且level为mgr
			if ( level != null 
				&& level.equals(WebConstant.MGR_LEVEL))
			{
				return invocation.invoke();
			}
			else
			{
				return Action.LOGIN;
			}
		}
}
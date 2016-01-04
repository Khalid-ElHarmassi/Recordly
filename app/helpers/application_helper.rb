module ApplicationHelper
  def nav_link_to(click_text, action, url,style)
    if action_name == action
       link_to click_text,url, :class => style
    else
       link_to click_text,url
    end
  end
end

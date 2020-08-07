module ApplicationHelper
   def sample_helper
     "<p>My Helper</p>".html_safe
   end

   def login_helper
     if !current_user.is_a?(GuestUser)
      link_to "Edit", edit_user_registration_path, class: "nav-link"
       link_to "Logout", destroy_user_session_path, method: :delete, class: "nav-link"
     else
       (link_to "Sign Up", new_user_registration_path, class: "nav-link") +
       " ".html_safe +
       (link_to "Login", new_user_session_path, class: "nav-link")
     end
   end

   def session_helper
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]}"
      content_tag(:p, greeting, class: "source-greeting" )
   end
  end

  def copyright_generator
    JcViewTool::Renderer.copyright 'Jamie Crone', 'All rights reserved'
  end

end

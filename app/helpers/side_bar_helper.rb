module SideBarHelper
  def side_bar_items(ru)
    result = []
    result << {
      :name => 'Авторы',
      :icon => 'users', :class => 'long',
      :controller => :autors, :action => :new}
     
    result
  end
  
  def is_open?(ctr, act)
    case ctr.to_s
    when 'users'
      ctr.to_s == controller_name.to_s  
    else
      false
    end
  end
end

require 'redmine'

Redmine::Plugin.register :redmine_new_project_button do
  name 'Redmine New Project Button plugin'
  author 'Syntactic Vexation'
  description 'This is a plugin for Redmine to add a Add New Project to the top toolbar'
  version '0.0.1'
  url 'https://github.com/syntacticvexation/redmine_new_project_button'

  menu :account_menu, :new_proj, {:controller => 'projects', :action => 'new'},
       :caption => :label_project_new,
       :first => true,
       :html => { :class => 'icon icon-add' }
#       :if => User.current.allowed_to?(:add_project, nil, :global => true)
end

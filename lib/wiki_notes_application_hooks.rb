require 'redmine'
class WikiNotesApplicationHooks < Redmine::Hook::ViewListener
  def view_layouts_base_html_head(context = {})
    # beware of http://www.redmine.org/issues/3935
    return stylesheet_link_tag("wiki_notes.css", :plugin => "redmine_wiki_notes", :media => "all")
  end
end

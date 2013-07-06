module WikiNotesMacro
  Redmine::WikiFormatting::Macros.register do
    desc "Adds a note to the wiki page:\n\n" +
      " @!{{note(text)}}@\n" +
      " @!{{tip(text)}}@\n" +
      " @!{{important(text)}}@\n"
      " @!{{warning(text)}}@\n"

    macro :note do |obj, args|
      o = '<div class="noteclassic">'
      o << args.join(",")
      o << '</div>'
      o.html_safe
    end

    macro :tip do |obj, args|
      o = '<div class="notetip">'
      o << args.join(",")
      o << '</div>'
      o.html_safe
    end

    macro :important do |obj, args|
      o = '<div class="noteimportant">'
      o << args.join(",")
      o << '</div>'
      o.html_safe
    end

    macro :warning do |obj, args|
      o = '<div class="notewarning">'
      o << args.join(",")
      o << '</div>'
      o.html_safe
    end
  end
end

module WikiNotesMacro
  Redmine::WikiFormatting::Macros.register do
    desc "Adds a note to the wiki page:\n\n" +
      " @!{{note(text)}}@\n" +
      " @!{{tip(text)}}@\n" +
      " @!{{important(text)}}@\n"
      " @!{{warning(text)}}@\n"

    macro :note, :parse_args => false do |obj, args|
      o = '<div class="noteclassic">'
      o << textilizable(args)
      o << '</div>'
      o.html_safe
    end

    macro :tip, :parse_args => false do |obj, args|
      o = '<div class="notetip">'
      o << textilizable(args)
      o << '</div>'
      o.html_safe
    end

    macro :important, :parse_args => false do |obj, args|
      o = '<div class="noteimportant">'
      o << textilizable(args)
      o << '</div>'
      o.html_safe
    end

    macro :warning, :parse_args => false do |obj, args|
      o = '<div class="notewarning">'
      o << textilizable(args)
      o << '</div>'
      o.html_safe
    end
  end
end

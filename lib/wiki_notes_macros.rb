module WikiNotesMacro
  Redmine::WikiFormatting::Macros.register do
    desc "Adds a note to the wiki page:\n\n" +
      "<pre>\n" +
      "{{note(text with *wiki formatting*)}}\n" +
      "{{note\nAlternately, you can put blocks of *wiki-formatted* text here.\n}}\n" +
      "{{note(Or if you really want)\nYou can do both...\n}}\n" +
      "</pre>"
    macro :note, :parse_args => false do |obj, args, text|
      o = textilizable(args)
      if text.present?
        o << textilizable(text, :object => obj, :headings => false)
      end
      content_tag('div', o.html_safe, :class => "noteclassic")
    end

    desc "Variant of @note@."
    macro :tip, :parse_args => false do |obj, args, text|
      o = textilizable(args)
      if text.present?
        o << textilizable(text, :object => obj, :headings => false)
      end
      content_tag('div', o.html_safe, :class => "notetip")
    end

    desc "Variant of @note@."
    macro :important, :parse_args => false do |obj, args, text|
      o = textilizable(args)
      if text.present?
        o << textilizable(text, :object => obj, :headings => false)
      end
      content_tag('div', o.html_safe, :class => "noteimportant")
    end

    desc "Variant of @note@."
    macro :warning, :parse_args => false do |obj, args, text|
      o = textilizable(args)
      if text.present?
        o << textilizable(text, :object => obj, :headings => false)
      end
      content_tag('div', o.html_safe, :class => "notewarning")
    end
  end

end

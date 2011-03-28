require 'tempfile'

module Editor
  def edit(string='', editor = ENV['EDITOR'] || 'vim')
    begin
      tmp = Tempfile.open(%w(editor .tmp))
      tmp.set_encoding('ASCII-8BIT')
      tmp.write string
      tmp.close

      if system(editor, tmp.path)
        tmp.open.read.force_encoding(string.encoding)
      else
        string
      end
    ensure
      tmp.close!
    end
  end

  class << self
    include Editor
  end
end

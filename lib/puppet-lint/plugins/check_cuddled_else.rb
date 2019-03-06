PuppetLint.new_check(:cuddled_else) do
  def check
    tokens.each do |token|
      next unless token.type == :ELSE || token.type == :ELSIF

      ## 'else/elsif' should be first thing on line (but could be indented)
      prev1 = token.prev_token
      next if prev1.type == :NEWLINE || prev1.type == :INDENT

      ## otherwise it's not an uncuddled else/elsif
      notify :warning, {
        :message => "found cuddled #{token.type.to_s.downcase}, should be on separate line",
        :line    => token.line,
        :column  => token.column,
      }
    end
  end
end

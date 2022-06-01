(declare-const X String)
; /filename=[^\n]*\u{2e}xsl/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xsl/i\u{a}"))))
(check-sat)

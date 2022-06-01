(declare-const X String)
; phpinfo[^\n\r]*195\.225\.\dccecaedbebfcaf\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "phpinfo") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "195.225.") (re.range "0" "9") (str.to_re "ccecaedbebfcaf.com\u{a}")))))
; /filename=[^\n]*\u{2e}pptx/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pptx/i\u{a}")))))
(check-sat)

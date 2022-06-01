(declare-const X String)
; 195\.225\.\<title\>Actual
(assert (not (str.in_re X (str.to_re "195.225.<title>Actual\u{a}"))))
; /filename=[^\n]*\u{2e}cis/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cis/i\u{a}")))))
(check-sat)

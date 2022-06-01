(declare-const X String)
; /filename=[^\n]*\u{2e}zip/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".zip/i\u{a}"))))
; \.txt$
(assert (not (str.in_re X (str.to_re ".txt\u{a}"))))
; IP\d+SAHPORT-User-Agent\u{3A}User-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "IP") (re.+ (re.range "0" "9")) (str.to_re "SAHPORT-User-Agent:User-Agent:\u{a}"))))
(check-sat)

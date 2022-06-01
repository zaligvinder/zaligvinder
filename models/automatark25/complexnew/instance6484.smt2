(declare-const X String)
; (?s)/\*.*\*/
(assert (str.in_re X (re.++ (str.to_re "/*") (re.* re.allchar) (str.to_re "*/\u{a}"))))
; /filename=[^\n]*\u{2e}torrent/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".torrent/i\u{a}"))))
(check-sat)

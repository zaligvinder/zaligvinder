(declare-const X String)
; IP\d+SAHPORT-User-Agent\u{3A}User-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "IP") (re.+ (re.range "0" "9")) (str.to_re "SAHPORT-User-Agent:User-Agent:\u{a}"))))
; /filename=[^\n]*\u{2e}sum/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".sum/i\u{a}"))))
; /filename=[^\n]*\u{2e}pjpeg/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pjpeg/i\u{a}")))))
(check-sat)

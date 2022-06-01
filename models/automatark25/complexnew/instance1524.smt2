(declare-const X String)
; www\u{2E}pcsentinelsoftware\u{2E}com
(assert (not (str.in_re X (str.to_re "www.pcsentinelsoftware.com\u{a}"))))
; /filename=[^\n]*\u{2e}ogv/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ogv/i\u{a}"))))
; \/cgi-bin\/PopupVHost\u{3A}piolet\u{D}\u{A}\u{D}\u{A}Attached
(assert (not (str.in_re X (str.to_re "/cgi-bin/PopupVHost:piolet\u{d}\u{a}\u{d}\u{a}Attached\u{a}"))))
; /listoverridecount([2345678]|[019][0-9])/i
(assert (str.in_re X (re.++ (str.to_re "/listoverridecount") (re.union (re.++ (re.union (str.to_re "0") (str.to_re "1") (str.to_re "9")) (re.range "0" "9")) (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8")) (str.to_re "/i\u{a}"))))
(check-sat)

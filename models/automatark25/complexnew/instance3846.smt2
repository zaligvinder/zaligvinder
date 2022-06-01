(declare-const X String)
; is\s+lnzzlnbk\u{2f}pkrm\.fin\s+Host\u{3A}\u{2F}toolbar\u{2F}supremetb
(assert (str.in_re X (re.++ (str.to_re "is") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "lnzzlnbk/pkrm.fin") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:/toolbar/supremetb\u{a}"))))
; /\.exe$/U
(assert (str.in_re X (str.to_re "/.exe/U\u{a}")))
(check-sat)

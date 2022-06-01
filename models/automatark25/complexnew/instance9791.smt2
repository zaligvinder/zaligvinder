(declare-const X String)
; xpsp2-\s+spyblpat.*is\u{2E}phpBarFrom\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "xpsp2-") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "spyblpat") (re.* re.allchar) (str.to_re "is.phpBarFrom:\u{a}")))))
; ^"[^"]+"$
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.+ (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}\u{a}"))))
; that.*CodeguruBrowser.*CasinoBladeisInsideupdate\.cgiHost\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "that") (re.* re.allchar) (str.to_re "CodeguruBrowser") (re.* re.allchar) (str.to_re "CasinoBladeisInsideupdate.cgiHost:\u{a}")))))
(check-sat)

(declare-const X String)
; \u{3}\u{0}\u{1c}\u{0}\u{0}\u{0}\u{0}\u{0}\u{1}Furax
(assert (not (str.in_re X (str.to_re "\u{3}\u{0}\u{1c}\u{0}\u{0}\u{0}\u{0}\u{0}\u{1}Furax\u{a}"))))
; that.*CodeguruBrowser.*CasinoBladeisInsideupdate\.cgiHost\u{3A}
(assert (str.in_re X (re.++ (str.to_re "that") (re.* re.allchar) (str.to_re "CodeguruBrowser") (re.* re.allchar) (str.to_re "CasinoBladeisInsideupdate.cgiHost:\u{a}"))))
; \u{18}\u{16}\dsearch\u{2e}conduit\u{2e}com\u{3C}logs\u{40}logs\u{2E}com\u{3E}
(assert (str.in_re X (re.++ (str.to_re "\u{18}\u{16}") (re.range "0" "9") (str.to_re "search.conduit.com<logs@logs.com>\u{a}"))))
(check-sat)

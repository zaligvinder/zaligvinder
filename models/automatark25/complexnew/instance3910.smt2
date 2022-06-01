(declare-const X String)
; Controlsource%3Dultrasearch136%26campaign%3Dsnap
(assert (str.in_re X (str.to_re "Controlsource%3Dultrasearch136%26campaign%3Dsnap\u{a}")))
; www\u{2E}ZSearchResults\u{2E}com\dBar.*sponsor2\.ucmore\.com
(assert (str.in_re X (re.++ (str.to_re "www.ZSearchResults.com\u{13}") (re.range "0" "9") (str.to_re "Bar") (re.* re.allchar) (str.to_re "sponsor2.ucmore.com\u{a}"))))
; Serverulmxct\u{2f}mqoycWinSession\u{2F}client\u{2F}\u{2A}PORT1\u{2A}
(assert (str.in_re X (str.to_re "Serverulmxct/mqoycWinSession/client/*PORT1*\u{a}")))
; /filename=[^\n]*\u{2e}doc/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".doc/i\u{a}"))))
(check-sat)

(declare-const X String)
; IP.*encoder\d+SAHPORT-User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "IP") (re.* re.allchar) (str.to_re "encoder") (re.+ (re.range "0" "9")) (str.to_re "SAHPORT-User-Agent:\u{a}")))))
; 3Awww\u{2e}urlblaze\u{2e}netulmxct\u{2f}mqoycEFErrorHost\u{3A}e2give\.com
(assert (not (str.in_re X (str.to_re "3Awww.urlblaze.netulmxct/mqoycEFErrorHost:e2give.com\u{a}"))))
; Days\s+HWAE\s+Host\u{3A}Portawww\.thecommunicator\.net
(assert (not (str.in_re X (re.++ (str.to_re "Days") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HWAE") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Portawww.thecommunicator.net\u{a}")))))
(check-sat)

(declare-const X String)
; ^([a-zA-Z0-9]{1,15})$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 15) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}")))))
; ^[SFTG]\d{7}[A-Z]$
(assert (str.in_re X (re.++ (re.union (str.to_re "S") (str.to_re "F") (str.to_re "T") (str.to_re "G")) ((_ re.loop 7 7) (re.range "0" "9")) (re.range "A" "Z") (str.to_re "\u{a}"))))
; \d{2}.?\d{3}.?\d{3}/?\d{4}-?\d{2}
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt re.allchar) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt re.allchar) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re "/")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}"))))
; PortaUser-Agent\u{3A}Host\u{3A}
(assert (str.in_re X (str.to_re "PortaUser-Agent:Host:\u{a}")))
; Host\u{3A}\d+Black\s+daosearch\u{2E}comMyPostwww\.raxsearch\.com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Black") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "daosearch.comMyPostwww.raxsearch.com\u{a}"))))
(check-sat)

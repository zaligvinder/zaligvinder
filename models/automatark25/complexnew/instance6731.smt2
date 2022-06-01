(declare-const X String)
; ^[A-Z][a-z]+(o(i|u)(n|(v)?r(t)?|s|t|x)(e(s)?)?)$
(assert (not (str.in_re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to_re "\u{a}o") (re.union (str.to_re "i") (str.to_re "u")) (re.union (str.to_re "n") (re.++ (re.opt (str.to_re "v")) (str.to_re "r") (re.opt (str.to_re "t"))) (str.to_re "s") (str.to_re "t") (str.to_re "x")) (re.opt (re.++ (str.to_re "e") (re.opt (str.to_re "s"))))))))
; www\u{2E}ZSearchResults\u{2E}com\dBar.*sponsor2\.ucmore\.com
(assert (not (str.in_re X (re.++ (str.to_re "www.ZSearchResults.com\u{13}") (re.range "0" "9") (str.to_re "Bar") (re.* re.allchar) (str.to_re "sponsor2.ucmore.com\u{a}")))))
; Host\u{3A}PG=SPEEDBARReferer\u{3a}
(assert (not (str.in_re X (str.to_re "Host:PG=SPEEDBARReferer:\u{a}"))))
(check-sat)

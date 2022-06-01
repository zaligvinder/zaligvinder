(declare-const X String)
; (^\+[0-9]{2}|^\+[0-9]{2}\(0\)|^\(\+[0-9]{2}\)\(0\)|^00[0-9]{2}|^0)([0-9]{9}$|[0-9\-\s]{10}$)
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "+") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "+") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "(0)")) (re.++ (str.to_re "(+") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ")(0)")) (re.++ (str.to_re "00") ((_ re.loop 2 2) (re.range "0" "9"))) (str.to_re "0")) (re.union ((_ re.loop 9 9) (re.range "0" "9")) ((_ re.loop 10 10) (re.union (re.range "0" "9") (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (str.to_re "\u{a}")))))
; www\u{2E}ZSearchResults\u{2E}com\dBar.*sponsor2\.ucmore\.com
(assert (not (str.in_re X (re.++ (str.to_re "www.ZSearchResults.com\u{13}") (re.range "0" "9") (str.to_re "Bar") (re.* re.allchar) (str.to_re "sponsor2.ucmore.com\u{a}")))))
(check-sat)

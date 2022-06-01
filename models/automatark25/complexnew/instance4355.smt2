(declare-const X String)
; www\.actualnames\.com.*www\.klikvipsearch\.com.*\u{3C}\u{2F}chat\u{3E}
(assert (not (str.in_re X (re.++ (str.to_re "www.actualnames.com") (re.* re.allchar) (str.to_re "www.klikvipsearch.com") (re.* re.allchar) (str.to_re "</chat>\u{a}")))))
; \u{2F}xml\u{2F}toolbar\u{2F}
(assert (not (str.in_re X (str.to_re "/xml/toolbar/\u{a}"))))
; ^([1-9]|(0|1|2)[0-9]|30)(/|-)([1-9]|1[0-2]|0[1-9])(/|-)(14[0-9]{2})$
(assert (not (str.in_re X (re.++ (re.union (re.range "1" "9") (re.++ (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30")) (re.union (str.to_re "/") (str.to_re "-")) (re.union (re.range "1" "9") (re.++ (str.to_re "1") (re.range "0" "2")) (re.++ (str.to_re "0") (re.range "1" "9"))) (re.union (str.to_re "/") (str.to_re "-")) (str.to_re "\u{a}14") ((_ re.loop 2 2) (re.range "0" "9"))))))
(check-sat)

(declare-const X String)
; ^\d{1}(\.\d{3})-\d{3}(\.\d{1})$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a.") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 1) (re.range "0" "9"))))))
; searchnugget.*Referer\x3A\s+User-Agent\x3AHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "searchnugget\x13") (re.* re.allchar) (str.to.re "Referer:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:Host:\x0a")))))
(check-sat)

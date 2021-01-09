(declare-const X String)
; (\<(.*?)\>)(.*?)(\<\/(.*?)\>)
(assert (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a<") (re.* re.allchar) (str.to.re "></") (re.* re.allchar) (str.to.re ">"))))
; ^\d{1}(\.\d{3})-\d{3}(\.\d{1})$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a.") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 1) (re.range "0" "9")))))
(check-sat)

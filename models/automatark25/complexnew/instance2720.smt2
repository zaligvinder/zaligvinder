(declare-const X String)
; ^([A-Za-z]{5})([0-9]{4})([A-Za-z]{1})$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a")))))
; [\\s+,]
(assert (str.in.re X (re.++ (re.union (str.to.re "\x5c") (str.to.re "s") (str.to.re "+") (str.to.re ",")) (str.to.re "\x0a"))))
; Host\x3A.*Hello\x2E.*Referer\x3AToolbarCurrent\x3BCIA
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "Hello.") (re.* re.allchar) (str.to.re "Referer:ToolbarCurrent;CIA\x0a"))))
(check-sat)

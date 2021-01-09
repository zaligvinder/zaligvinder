(declare-const X String)
; ^[-]?\d*(\.\d*)$
(assert (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.* (re.range "0" "9")) (str.to.re "\x0a.") (re.* (re.range "0" "9")))))
; \x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (not (str.in.re X (str.to.re "(robert@blackcastlesoft.com)\x0a"))))
; ^[A-G](b|#)?((m(aj)?|M|aug|dim|sus)([2-7]|9|13)?)?(\/[A-G](b|#)?)?$
(assert (not (str.in.re X (re.++ (re.range "A" "G") (re.opt (re.union (str.to.re "b") (str.to.re "#"))) (re.opt (re.++ (re.union (re.++ (str.to.re "m") (re.opt (str.to.re "aj"))) (str.to.re "M") (str.to.re "aug") (str.to.re "dim") (str.to.re "sus")) (re.opt (re.union (re.range "2" "7") (str.to.re "9") (str.to.re "13"))))) (re.opt (re.++ (str.to.re "/") (re.range "A" "G") (re.opt (re.union (str.to.re "b") (str.to.re "#"))))) (str.to.re "\x0a")))))
; \stoolbar\.anwb\.nl.*Host\x3A
(assert (not (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toolbar.anwb.nl") (re.* re.allchar) (str.to.re "Host:\x0a")))))
; /filename=[^\n]*\x2evqf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".vqf/i\x0a"))))
(check-sat)

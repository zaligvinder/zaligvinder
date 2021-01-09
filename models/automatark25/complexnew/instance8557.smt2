(declare-const X String)
; [a-zA-Z][a-zA-Z0-9_\-\,\.]{5,31}
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 5 31) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re ",") (str.to.re "."))) (str.to.re "\x0a"))))
; /\.php\?j=1&k=[0-9](i=[0-9])?$/U
(assert (not (str.in.re X (re.++ (str.to.re "/.php?j=1&k=") (re.range "0" "9") (re.opt (re.++ (str.to.re "i=") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
(check-sat)

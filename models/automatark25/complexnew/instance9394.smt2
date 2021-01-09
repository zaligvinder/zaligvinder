(declare-const X String)
; Host\x3ASpyxpsp2-Host\x3aHost\x3Awjpropqmlpohj\x2floregister\.asp
(assert (str.in.re X (str.to.re "Host:Spyxpsp2-Host:Host:wjpropqmlpohj/loregister.asp\x0a")))
; (^\d{1,5}$|^\d{1,5}\.\d{1,2}$)
(assert (str.in.re X (re.++ (re.union ((_ re.loop 1 5) (re.range "0" "9")) (re.++ ((_ re.loop 1 5) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)

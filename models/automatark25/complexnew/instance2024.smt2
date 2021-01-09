(declare-const X String)
; ^(\d{1,3}'(\d{3}')*\d{3}(\.\d{1,3})?|\d{1,3}(\.\d{3})?)$
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "'") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "'"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")))))) (str.to.re "\x0a")))))
; CMDLoginExciteSubject\x3Adownloadfile\x2eorg
(assert (str.in.re X (str.to.re "CMDLoginExciteSubject:downloadfile.org\x0a")))
(check-sat)

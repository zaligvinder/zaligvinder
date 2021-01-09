(declare-const X String)
; \x7D\x7BTrojan\x3Abacktrust\x2EcomHost\x3Apjpoptwql\x2frlnj
(assert (not (str.in.re X (str.to.re "}{Trojan:backtrust.comHost:pjpoptwql/rlnj\x0a"))))
; ^\d{9}[\d|X]$
(assert (str.in.re X (re.++ ((_ re.loop 9 9) (re.range "0" "9")) (re.union (re.range "0" "9") (str.to.re "|") (str.to.re "X")) (str.to.re "\x0a"))))
(check-sat)

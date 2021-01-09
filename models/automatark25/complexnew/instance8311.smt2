(declare-const X String)
; \x7D\x7BTrojan\x3Abacktrust\x2EcomHost\x3Apjpoptwql\x2frlnj
(assert (str.in.re X (str.to.re "}{Trojan:backtrust.comHost:pjpoptwql/rlnj\x0a")))
; ^(([0]?[1-9]|1[0-2])(:)([0-5][0-9]))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9")))))
; /filename=[^\n]*\x2epict/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pict/i\x0a"))))
; /filename=[^\n]*\x2eapk/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".apk/i\x0a"))))
(check-sat)

(declare-const X String)
; ^([1-9]|[1-9]\d|[1-2]\d{2}|3[0-6][0-6])$
(assert (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "3") (re.range "0" "6") (re.range "0" "6"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ert/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rt/i\x0a"))))
; \x7D\x7BTrojan\x3Abacktrust\x2EcomHost\x3Apjpoptwql\x2frlnj
(assert (str.in.re X (str.to.re "}{Trojan:backtrust.comHost:pjpoptwql/rlnj\x0a")))
; /filename=[^\n]*\x2efli/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".fli/i\x0a")))))
; TPSystemHost\x3AHost\x3ashow\x2Eroogoo\x2EcomX-Mailer\x3A
(assert (not (str.in.re X (str.to.re "TPSystemHost:Host:show.roogoo.comX-Mailer:\x13\x0a"))))
(check-sat)

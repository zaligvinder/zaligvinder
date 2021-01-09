(declare-const X String)
; /filename=[^\n]*\x2exslt/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xslt/i\x0a"))))
; (^(2014)|^(2149))\d{11}$
(assert (str.in.re X (re.++ (re.union (str.to.re "2014") (str.to.re "2149")) ((_ re.loop 11 11) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^([A-Z]|[a-z]){4} ?[0-9]{6}-?[0-9]{1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (str.to.re " ")) ((_ re.loop 6 6) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "\x0a")))))
; Windows\x2Fclient\x2FBlackreportc\.goclick\.comX-Sender\x3A
(assert (not (str.in.re X (str.to.re "Windows/client/Blackreportc.goclick.comX-Sender:\x13\x0a"))))
(check-sat)

(declare-const X String)
; Informationurl=Host\x3Aaction\x2Eforhttp\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (str.in.re X (str.to.re "Informationurl=Host:action.forhttp://www.searchinweb.com/search.php?said=bar\x0a")))
; /^[a-z]\x3d[a-f\d]{80,140}$/Pi
(assert (str.in.re X (re.++ (str.to.re "/") (re.range "a" "z") (str.to.re "=") ((_ re.loop 80 140) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/Pi\x0a"))))
; \.?[a-zA-Z0-9]{1,}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re ".")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)

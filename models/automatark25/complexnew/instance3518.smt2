(declare-const X String)
; [0-9]{4}-[0-9]{3}
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2emotn/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".motn/i\x0a")))))
; /\?[a-f0-9]{4}$/miU
(assert (not (str.in.re X (re.++ (str.to.re "/?") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/miU\x0a")))))
; \x2APORT3\x2A\s+Warezxmlns\x3A%3flinkautomatici\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "*PORT3*") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Warezxmlns:%3flinkautomatici.com\x0a")))))
; /RegExp?\x23.{0,5}\x28\x3f[^\x29]{0,4}i.*?\x28\x3f\x2d[^\x29]{0,4}i.{0,50}\x7c\x7c/smi
(assert (not (str.in.re X (re.++ (str.to.re "/RegEx") (re.opt (str.to.re "p")) (str.to.re "#") ((_ re.loop 0 5) re.allchar) (str.to.re "(?") ((_ re.loop 0 4) (re.comp (str.to.re ")"))) (str.to.re "i") (re.* re.allchar) (str.to.re "(?-") ((_ re.loop 0 4) (re.comp (str.to.re ")"))) (str.to.re "i") ((_ re.loop 0 50) re.allchar) (str.to.re "||/smi\x0a")))))
(check-sat)

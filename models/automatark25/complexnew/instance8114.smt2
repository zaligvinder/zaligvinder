(declare-const X String)
; ^\$?(([1-9],)?([0-9]{3},){0,3}[0-9]{3}|[0-9]{0,16})(\.[0-9]{0,3})?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "$")) (re.union (re.++ (re.opt (re.++ (re.range "1" "9") (str.to.re ","))) ((_ re.loop 0 3) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9"))) ((_ re.loop 0 16) (re.range "0" "9"))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 3) (re.range "0" "9")))) (str.to.re "\x0a")))))
; (\(")([0-9]*)(\")
(assert (not (str.in.re X (re.++ (str.to.re "(\x22") (re.* (re.range "0" "9")) (str.to.re "\x22\x0a")))))
; (:(6553[0-5]|655[0-2][0-9]\d|65[0-4](\d){2}|6[0-4](\d){3}|[1-5](\d){4}|[1-9](\d){0,3}))?
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re ":") (re.union (re.++ (str.to.re "6553") (re.range "0" "5")) (re.++ (str.to.re "655") (re.range "0" "2") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "65") (re.range "0" "4") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "6") (re.range "0" "4") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.range "1" "5") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 0 3) (re.range "0" "9")))))) (str.to.re "\x0a")))))
; ^([0]?\d|1\d|2[0-3]):([0-5]\d):([0-5]\d)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re "::\x0a") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9")))))
; /filename=[^\n]*\x2ejnlp/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jnlp/i\x0a")))))
(check-sat)

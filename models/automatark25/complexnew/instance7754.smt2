(declare-const X String)
; www\x2Esogou\x2EcomUser-Agent\x3A
(assert (str.in.re X (str.to.re "www.sogou.comUser-Agent:\x0a")))
; ^([0]?\d|1\d|2[0-3]):([0-5]\d):([0-5]\d)$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re "::\x0a") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9"))))
; ^-?\d+([.,]?\d+)?$
(assert (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.+ (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to.re ".") (str.to.re ","))) (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
; Subject\x3a\d+rprpgbnrppb\x2fci
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.range "0" "9")) (str.to.re "rprpgbnrppb/ci\x0a")))))
(check-sat)

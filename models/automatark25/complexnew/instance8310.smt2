(declare-const X String)
; /filename=[^\n]*\x2excf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xcf/i\x0a")))))
; xbqyosoe\x2fcpvmdll\x3F
(assert (str.in.re X (str.to.re "xbqyosoe/cpvmdll?\x0a")))
; /^\x2f[0-9A-F]{42}$/Um
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 42 42) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "/Um\x0a")))))
; ^([0-2]\d|3[0-1]|[1-9])\/(0\d|1[0-2]|[1-9])\/(\d{4})$
(assert (str.in.re X (re.++ (re.union (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1")) (re.range "1" "9")) (str.to.re "/") (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "2")) (re.range "1" "9")) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)

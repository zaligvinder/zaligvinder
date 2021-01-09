(declare-const X String)
; ^([0-1]?[0-9]|[2][0-3]):([0-5][0-9]):([0-5][0-9])$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re "::\x0a") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9")))))
; (\[[Ii][Mm][Gg]\])(\S+?)(\[\/[Ii][Mm][Gg]\])
(assert (str.in.re X (re.++ (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "\x0a[") (re.union (str.to.re "I") (str.to.re "i")) (re.union (str.to.re "M") (str.to.re "m")) (re.union (str.to.re "G") (str.to.re "g")) (str.to.re "][/") (re.union (str.to.re "I") (str.to.re "i")) (re.union (str.to.re "M") (str.to.re "m")) (re.union (str.to.re "G") (str.to.re "g")) (str.to.re "]"))))
(check-sat)

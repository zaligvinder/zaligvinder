(declare-const X String)
; (\[[Ii][Mm][Gg]\])(\S+?)(\[\/[Ii][Mm][Gg]\])
(assert (str.in.re X (re.++ (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "\x0a[") (re.union (str.to.re "I") (str.to.re "i")) (re.union (str.to.re "M") (str.to.re "m")) (re.union (str.to.re "G") (str.to.re "g")) (str.to.re "][/") (re.union (str.to.re "I") (str.to.re "i")) (re.union (str.to.re "M") (str.to.re "m")) (re.union (str.to.re "G") (str.to.re "g")) (str.to.re "]"))))
(check-sat)

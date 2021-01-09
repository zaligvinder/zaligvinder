(declare-const X String)
; /\x2efli([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.fli") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; HXLogOnlyanHost\x3AspasHost\x3A
(assert (not (str.in.re X (str.to.re "HXLogOnlyanHost:spasHost:\x0a"))))
; .*[Oo0][Ee][Mm].*
(assert (str.in.re X (re.++ (re.* re.allchar) (re.union (str.to.re "O") (str.to.re "o") (str.to.re "0")) (re.union (str.to.re "E") (str.to.re "e")) (re.union (str.to.re "M") (str.to.re "m")) (re.* re.allchar) (str.to.re "\x0a"))))
(check-sat)

(declare-const X String)
; /^(\x75|\x2d|\x2f|\x73|\xa2|\x2e|\x24|\x74)/sR
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "u") (str.to.re "-") (str.to.re "/") (str.to.re "s") (str.to.re "\xa2") (str.to.re ".") (str.to.re "$") (str.to.re "t")) (str.to.re "/sR\x0a"))))
; /^POST\x20\x2fg[ao]lfstream\x26/
(assert (not (str.in.re X (re.++ (str.to.re "/POST /g") (re.union (str.to.re "a") (str.to.re "o")) (str.to.re "lfstream&/\x0a")))))
(check-sat)

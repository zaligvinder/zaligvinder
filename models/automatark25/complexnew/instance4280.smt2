(declare-const X String)
; ^([0-9]*\-?\ ?\/?[0-9]*)$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.range "0" "9")) (re.opt (str.to.re "-")) (re.opt (str.to.re " ")) (re.opt (str.to.re "/")) (re.* (re.range "0" "9")))))
; dll\x3F\[DRIVEHost\x3A\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1
(assert (not (str.in.re X (str.to.re "dll?[DRIVEHost:\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1\x0a"))))
(check-sat)

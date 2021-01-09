(declare-const X String)
; ^(~?/|[a-zA-Z]:[\\/]).+
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "~")) (str.to.re "/")) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":") (re.union (str.to.re "\x5c") (str.to.re "/")))) (re.+ re.allchar) (str.to.re "\x0a")))))
; ^([1-9]|0[1-9]|1[0-2]):([0-5][0-9])$
(assert (not (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ":\x0a") (re.range "0" "5") (re.range "0" "9")))))
; \x22StarLogger\x22User-Agent\x3AJMailUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "\x22StarLogger\x22User-Agent:JMailUser-Agent:\x0a"))))
(check-sat)

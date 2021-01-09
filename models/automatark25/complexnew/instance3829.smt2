(declare-const X String)
; ^\d?\d'(\d|1[01])?.?(\d|1[01])"$
(assert (not (str.in.re X (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9") (str.to.re "'") (re.opt (re.union (re.range "0" "9") (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1"))))) (re.opt re.allchar) (re.union (re.range "0" "9") (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "\x22\x0a")))))
; HWAE[^\n\r]*Email[^\n\r]*User-Agent\x3AUser-Agent\x3awowokayHost\x3A
(assert (str.in.re X (re.++ (str.to.re "HWAE") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Email") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:User-Agent:wowokayHost:\x0a"))))
; ^1?[1-2]$|^[1-9]$|^[1]0$
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "1")) (re.range "1" "2")) (re.range "1" "9") (str.to.re "10\x0a"))))
; ^(000000[1-9])$|^(00000[1-9][0-9])$|^(0000[1-9][0-9][0-9])$|^(000[1-9][0-9][0-9][0-9])$|^(00[1-9][0-9][0-9][0-9][0-9])$|^(0[1-9][0-9][0-9][0-9][0-9][0-9])$|^([1-9][0-9][0-9][0-9][0-9][0-9][0-9])$
(assert (not (str.in.re X (re.union (re.++ (str.to.re "000000") (re.range "1" "9")) (re.++ (str.to.re "00000") (re.range "1" "9") (re.range "0" "9")) (re.++ (str.to.re "0000") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "000") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "00") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "0") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "\x0a") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9"))))))
; [0-9]*\.?[0-9]*[1-9]
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (re.range "1" "9") (str.to.re "\x0a"))))
(check-sat)

(declare-const X String)
; HWAE[^\n\r]*Email[^\n\r]*User-Agent\x3AUser-Agent\x3awowokayHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "HWAE") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Email") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:User-Agent:wowokayHost:\x0a")))))
; /\/images\/[a-zA-Z]\.php\?id\=[0-9]{2,3}(\.\d)?$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//images/") (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ".php?id=") ((_ re.loop 2 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.range "0" "9"))) (str.to.re "/Ui\x0a")))))
(check-sat)

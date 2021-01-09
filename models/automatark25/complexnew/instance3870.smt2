(declare-const X String)
; ^(00|0?[1-9]|1[0-9]|2[0-3])\:([0-5][0-9])\:([0-5][0-9])$
(assert (str.in.re X (re.++ (re.union (str.to.re "00") (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re "::\x0a") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9"))))
; com\x2Findex\.php\?tpid=onspyblpatUser-Agent\x3ASurveillance
(assert (not (str.in.re X (str.to.re "com/index.php?tpid=onspyblpatUser-Agent:Surveillance\x13\x0a"))))
; OS\x2F\d+User-Agent\x3AUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "OS/") (re.+ (re.range "0" "9")) (str.to.re "User-Agent:User-Agent:\x0a"))))
(check-sat)

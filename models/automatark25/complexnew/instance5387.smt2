(declare-const X String)
; User-Agent\x3A\s+\x2APORT3\x2A\d+
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "*PORT3*") (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; /^[014567d]-/R
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "d")) (str.to.re "-/R\x0a")))))
; ookflolfctm\x2fnmot\.fmu
(assert (str.in.re X (str.to.re "ookflolfctm/nmot.fmu\x0a")))
(check-sat)

(declare-const X String)
; Days\s+HWAE\s+Host\x3APortawww\.thecommunicator\.net
(assert (str.in.re X (re.++ (str.to.re "Days") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HWAE") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Portawww.thecommunicator.net\x0a"))))
; ^#(\d{6})|^#([A-F]{6})|^#([A-F]|[0-9]){6}
(assert (str.in.re X (re.++ (str.to.re "#") (re.union ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 6 6) (re.range "A" "F")) (re.++ ((_ re.loop 6 6) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "\x0a"))))))
; .*[Pp]en[Ii1][\$s].*
(assert (not (str.in.re X (re.++ (re.* re.allchar) (re.union (str.to.re "P") (str.to.re "p")) (str.to.re "en") (re.union (str.to.re "I") (str.to.re "i") (str.to.re "1")) (re.union (str.to.re "$") (str.to.re "s")) (re.* re.allchar) (str.to.re "\x0a")))))
; Host\x3Aact=Host\x3aUser-Agent\x3AUser-Agent\x3ALiteselect\x2FGet
(assert (not (str.in.re X (str.to.re "Host:act=Host:User-Agent:User-Agent:Liteselect/Get\x0a"))))
; /\x2ert([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.rt") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)

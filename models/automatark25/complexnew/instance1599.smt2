(declare-const X String)
; Host\x3AWordmyway\.comhoroscope2Host
(assert (not (str.in.re X (str.to.re "Host:Wordmyway.comhoroscope2Host\x0a"))))
; ^[0-9#\*abcdABCD]+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to.re "#") (str.to.re "*") (str.to.re "a") (str.to.re "b") (str.to.re "c") (str.to.re "d") (str.to.re "A") (str.to.re "B") (str.to.re "C") (str.to.re "D"))) (str.to.re "\x0a")))))
; ^\d{4,4}[A-Z0-9](, *\d{4,4})[A-Z0-9]*$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.union (re.range "A" "Z") (re.range "0" "9")) (re.* (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a,") (re.* (str.to.re " ")) ((_ re.loop 4 4) (re.range "0" "9")))))
; SecureNet.*\x2Fsearchfast\x2F
(assert (str.in.re X (re.++ (str.to.re "SecureNet") (re.* re.allchar) (str.to.re "/searchfast/\x0a"))))
; /\x2eplp([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.plp") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)

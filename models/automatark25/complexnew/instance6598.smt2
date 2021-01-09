(declare-const X String)
; ^A-?|[BCD][+-]?|[SN]?F|W$
(assert (not (str.in.re X (re.union (re.++ (str.to.re "A") (re.opt (str.to.re "-"))) (re.++ (re.union (str.to.re "B") (str.to.re "C") (str.to.re "D")) (re.opt (re.union (str.to.re "+") (str.to.re "-")))) (re.++ (re.opt (re.union (str.to.re "S") (str.to.re "N"))) (str.to.re "F")) (str.to.re "W\x0a")))))
; /^(\d{1,2})(\/)(\d{1,2})(\/)(\d{4})(T|\s{1,2})(([0-1][0-9])|(2[0-3])):([0-5][0-9])+$/;
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (re.union (str.to.re "T") ((_ re.loop 1 2) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.+ (re.++ (re.range "0" "5") (re.range "0" "9"))) (str.to.re "/;\x0a"))))
; forum=.*Explorer\s+Host\x3Aact=Host\x3aUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "forum=") (re.* re.allchar) (str.to.re "Explorer") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:act=Host:User-Agent:\x0a")))))
; User-Agent\x3A\s+HXDownloadup
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HXDownloadup\x0a")))))
(check-sat)

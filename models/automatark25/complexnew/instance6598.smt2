(declare-const X String)
; ^A-?|[BCD][+-]?|[SN]?F|W$
(assert (not (str.in_re X (re.union (re.++ (str.to_re "A") (re.opt (str.to_re "-"))) (re.++ (re.union (str.to_re "B") (str.to_re "C") (str.to_re "D")) (re.opt (re.union (str.to_re "+") (str.to_re "-")))) (re.++ (re.opt (re.union (str.to_re "S") (str.to_re "N"))) (str.to_re "F")) (str.to_re "W\u{a}")))))
; /^(\d{1,2})(\/)(\d{1,2})(\/)(\d{4})(T|\s{1,2})(([0-1][0-9])|(2[0-3])):([0-5][0-9])+$/;
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "/") ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "/") ((_ re.loop 4 4) (re.range "0" "9")) (re.union (str.to_re "T") ((_ re.loop 1 2) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":") (re.+ (re.++ (re.range "0" "5") (re.range "0" "9"))) (str.to_re "/;\u{a}"))))
; forum=.*Explorer\s+Host\u{3A}act=Host\u{3a}User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "forum=") (re.* re.allchar) (str.to_re "Explorer") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:act=Host:User-Agent:\u{a}")))))
; User-Agent\u{3A}\s+HXDownloadup
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HXDownloadup\u{a}")))))
(check-sat)

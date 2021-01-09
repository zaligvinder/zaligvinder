(declare-const X String)
; ^\d+\/?\d*$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to.re "/")) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; ((\d{0}[0-9]|\d{0}[1]\d{0}[0-2])(\:)\d{0}[0-5]\d{0}[0-9](\:)\d{0}[0-5]\d{0}[0-9]\s(AM|PM))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ ((_ re.loop 0 0) (re.range "0" "9")) (re.range "0" "9")) (re.++ ((_ re.loop 0 0) (re.range "0" "9")) (str.to.re "1") ((_ re.loop 0 0) (re.range "0" "9")) (re.range "0" "2"))) (str.to.re ":") ((_ re.loop 0 0) (re.range "0" "9")) (re.range "0" "5") ((_ re.loop 0 0) (re.range "0" "9")) (re.range "0" "9") (str.to.re ":") ((_ re.loop 0 0) (re.range "0" "9")) (re.range "0" "5") ((_ re.loop 0 0) (re.range "0" "9")) (re.range "0" "9") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.union (str.to.re "AM") (str.to.re "PM"))))))
; Host\x3AUser-Agent\x3Awww\.raxsearch\.com
(assert (not (str.in.re X (str.to.re "Host:User-Agent:www.raxsearch.com\x0a"))))
(check-sat)

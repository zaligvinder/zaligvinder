(declare-const X String)
; Host\x3A[^\n\r]*cache\x2Eeverer\x2Ecom\s+from\.myway\.comToolbar
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "cache.everer.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "from.myway.com\x1bToolbar\x0a")))))
; ^-?\d{1,3}\.(\d{3}\.)*\d{3},\d\d$|^-?\d{1,3},\d\d$
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "-")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "."))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ",") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.opt (str.to.re "-")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") (re.range "0" "9") (re.range "0" "9") (str.to.re "\x0a")))))
; ^([0]?[1-9]|[1][0-2]):([0-5][0-9]|[1-9]) [aApP][mM]$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ":") (re.union (re.++ (re.range "0" "5") (re.range "0" "9")) (re.range "1" "9")) (str.to.re " ") (re.union (str.to.re "a") (str.to.re "A") (str.to.re "p") (str.to.re "P")) (re.union (str.to.re "m") (str.to.re "M")) (str.to.re "\x0a")))))
; &\#x0*(0|1|2|3|4|5|6|7|8|B|C|E|F|10|11|12|13|14|15|16|17|18|19|1A|1B|1C|1D|1E|1F);
(assert (not (str.in.re X (re.++ (str.to.re "&#x") (re.* (str.to.re "0")) (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "B") (str.to.re "C") (str.to.re "E") (str.to.re "F") (str.to.re "10") (str.to.re "11") (str.to.re "12") (str.to.re "13") (str.to.re "14") (str.to.re "15") (str.to.re "16") (str.to.re "17") (str.to.re "18") (str.to.re "19") (str.to.re "1A") (str.to.re "1B") (str.to.re "1C") (str.to.re "1D") (str.to.re "1E") (str.to.re "1F")) (str.to.re ";\x0a")))))
(check-sat)

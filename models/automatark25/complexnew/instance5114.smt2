(declare-const X String)
; Host\x3A.*User-Agent\x3a\sRequest
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "User-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Request\x0a"))))
; ^ *([AaBbCcEeGgHhJjKkLlMmNnPpRrSsTtVvXxYy]\d[a-zA-Z]) *-* *(\d[a-zA-Z]\d) *$|^ *(\d{5}) *$|^ *(\d{5}) *-* *(\d{4}) *$
(assert (not (str.in.re X (re.union (re.++ (re.* (str.to.re " ")) (re.* (str.to.re " ")) (re.* (str.to.re "-")) (re.* (str.to.re " ")) (re.* (str.to.re " ")) (re.union (str.to.re "A") (str.to.re "a") (str.to.re "B") (str.to.re "b") (str.to.re "C") (str.to.re "c") (str.to.re "E") (str.to.re "e") (str.to.re "G") (str.to.re "g") (str.to.re "H") (str.to.re "h") (str.to.re "J") (str.to.re "j") (str.to.re "K") (str.to.re "k") (str.to.re "L") (str.to.re "l") (str.to.re "M") (str.to.re "m") (str.to.re "N") (str.to.re "n") (str.to.re "P") (str.to.re "p") (str.to.re "R") (str.to.re "r") (str.to.re "S") (str.to.re "s") (str.to.re "T") (str.to.re "t") (str.to.re "V") (str.to.re "v") (str.to.re "X") (str.to.re "x") (str.to.re "Y") (str.to.re "y")) (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9")) (re.++ (re.* (str.to.re " ")) ((_ re.loop 5 5) (re.range "0" "9")) (re.* (str.to.re " "))) (re.++ (re.* (str.to.re " ")) ((_ re.loop 5 5) (re.range "0" "9")) (re.* (str.to.re " ")) (re.* (str.to.re "-")) (re.* (str.to.re " ")) ((_ re.loop 4 4) (re.range "0" "9")) (re.* (str.to.re " ")) (str.to.re "\x0a"))))))
; Host\x3A[^\n\r]*\x2Fbar_pl\x2Fshdoclc\.fcgi
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "/bar_pl/shdoclc.fcgi\x0a"))))
; cyber@yahoo\x2Ecom\s+Host\x3a\x7D\x7Crichfind\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "cyber@yahoo.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:}|richfind.com\x0a"))))
; /filename=[^\n]*\x2exbm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xbm/i\x0a")))))
(check-sat)

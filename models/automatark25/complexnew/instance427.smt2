(declare-const X String)
; /\x2epng([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.png") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^[0-9](\.[0-9]+)?$
(assert (not (str.in.re X (re.++ (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
; \x2Fcgi\x2Flogurl\.cgi.*User-Agent\x3A.*Host\x3Awww\x2EZSearchResults\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "/cgi/logurl.cgi") (re.* re.allchar) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "Host:www.ZSearchResults.com\x13\x0a")))))
; ^(3[0-1]|2[0-9]|1[0-9]|0[1-9])[\/](Jan|JAN|Feb|FEB|Mar|MAR|Apr|APR|May|MAY|Jun|JUN|Jul|JUL|Aug|AUG|Sep|SEP|Oct|OCT|Nov|NOV|Dec|DEC)[\/]\d{4}$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "3") (re.range "0" "1")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "0") (re.range "1" "9"))) (str.to.re "/") (re.union (str.to.re "Jan") (str.to.re "JAN") (str.to.re "Feb") (str.to.re "FEB") (str.to.re "Mar") (str.to.re "MAR") (str.to.re "Apr") (str.to.re "APR") (str.to.re "May") (str.to.re "MAY") (str.to.re "Jun") (str.to.re "JUN") (str.to.re "Jul") (str.to.re "JUL") (str.to.re "Aug") (str.to.re "AUG") (str.to.re "Sep") (str.to.re "SEP") (str.to.re "Oct") (str.to.re "OCT") (str.to.re "Nov") (str.to.re "NOV") (str.to.re "Dec") (str.to.re "DEC")) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^(\w+=[^\s,=]+,)*(\w+=[^\s,=]+,?)?$
(assert (not (str.in.re X (re.++ (re.* (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "=") (re.+ (re.union (str.to.re ",") (str.to.re "=") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ","))) (re.opt (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "=") (re.+ (re.union (str.to.re ",") (str.to.re "=") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re ",")))) (str.to.re "\x0a")))))
(check-sat)

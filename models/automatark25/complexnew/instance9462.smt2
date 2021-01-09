(declare-const X String)
; www\x2Ealtnet\x2EcomHost\x3ANSIS_DOWNLOADSubject\x3AUser-Agent\x3Awww\x2Esearchingall\x2Ecom
(assert (not (str.in.re X (str.to.re "www.altnet.com\x1bHost:NSIS_DOWNLOADSubject:User-Agent:www.searchingall.com\x0a"))))
; &( )
(assert (not (str.in.re X (str.to.re "& \x0a"))))
; ^(3[0-1]|2[0-9]|1[0-9]|0[1-9])[\/](Jan|JAN|Feb|FEB|Mar|MAR|Apr|APR|May|MAY|Jun|JUN|Jul|JUL|Aug|AUG|Sep|SEP|Oct|OCT|Nov|NOV|Dec|DEC)[\/]\d{4}$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "3") (re.range "0" "1")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "0") (re.range "1" "9"))) (str.to.re "/") (re.union (str.to.re "Jan") (str.to.re "JAN") (str.to.re "Feb") (str.to.re "FEB") (str.to.re "Mar") (str.to.re "MAR") (str.to.re "Apr") (str.to.re "APR") (str.to.re "May") (str.to.re "MAY") (str.to.re "Jun") (str.to.re "JUN") (str.to.re "Jul") (str.to.re "JUL") (str.to.re "Aug") (str.to.re "AUG") (str.to.re "Sep") (str.to.re "SEP") (str.to.re "Oct") (str.to.re "OCT") (str.to.re "Nov") (str.to.re "NOV") (str.to.re "Dec") (str.to.re "DEC")) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; richfind\x2Ecom\s+Host\x3A.*User-Agent\x3Athroughpjpoptwql\x2frlnj
(assert (str.in.re X (re.++ (str.to.re "richfind.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "User-Agent:throughpjpoptwql/rlnj\x0a"))))
(check-sat)

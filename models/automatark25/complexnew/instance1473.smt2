(declare-const X String)
; ([0]|[-]?[0]\.[0-9]+)|([-]?([1-9]+\.[0-9]+))|([-]?[1-9]+)
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "-")) (re.+ (re.range "1" "9")) (str.to.re ".") (re.+ (re.range "0" "9"))) (re.++ (str.to.re "\x0a") (re.opt (str.to.re "-")) (re.+ (re.range "1" "9"))) (str.to.re "0") (re.++ (re.opt (str.to.re "-")) (str.to.re "0.") (re.+ (re.range "0" "9")))))))
; Host\x3a\s+Agentbody=\x2521\x2521\x2521OptixSubject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Agentbody=%21%21%21Optix\x13Subject:\x0a")))))
; filename=\x22Subject\x3awww\x2Eadoptim\x2Ecomreport\x2Fbar_pl\x2Fchk\.fcgi
(assert (not (str.in.re X (str.to.re "filename=\x22Subject:www.adoptim.comreport/bar_pl/chk.fcgi\x0a"))))
; ^(3[0-1]|2[0-9]|1[0-9]|0[1-9])[\/](Jan|JAN|Feb|FEB|Mar|MAR|Apr|APR|May|MAY|Jun|JUN|Jul|JUL|Aug|AUG|Sep|SEP|Oct|OCT|Nov|NOV|Dec|DEC)[\/]\d{4}$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "3") (re.range "0" "1")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "0") (re.range "1" "9"))) (str.to.re "/") (re.union (str.to.re "Jan") (str.to.re "JAN") (str.to.re "Feb") (str.to.re "FEB") (str.to.re "Mar") (str.to.re "MAR") (str.to.re "Apr") (str.to.re "APR") (str.to.re "May") (str.to.re "MAY") (str.to.re "Jun") (str.to.re "JUN") (str.to.re "Jul") (str.to.re "JUL") (str.to.re "Aug") (str.to.re "AUG") (str.to.re "Sep") (str.to.re "SEP") (str.to.re "Oct") (str.to.re "OCT") (str.to.re "Nov") (str.to.re "NOV") (str.to.re "Dec") (str.to.re "DEC")) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; /^User-Agent\x3A[^\r\n]*malware/miH
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "malware/miH\x0a")))))
(check-sat)

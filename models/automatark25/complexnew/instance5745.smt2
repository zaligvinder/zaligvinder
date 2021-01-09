(declare-const X String)
; ^(3[0-1]|2[0-9]|1[0-9]|0[1-9])[\/](Jan|JAN|Feb|FEB|Mar|MAR|Apr|APR|May|MAY|Jun|JUN|Jul|JUL|Aug|AUG|Sep|SEP|Oct|OCT|Nov|NOV|Dec|DEC)[\/]\d{4}$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "3") (re.range "0" "1")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "0") (re.range "1" "9"))) (str.to.re "/") (re.union (str.to.re "Jan") (str.to.re "JAN") (str.to.re "Feb") (str.to.re "FEB") (str.to.re "Mar") (str.to.re "MAR") (str.to.re "Apr") (str.to.re "APR") (str.to.re "May") (str.to.re "MAY") (str.to.re "Jun") (str.to.re "JUN") (str.to.re "Jul") (str.to.re "JUL") (str.to.re "Aug") (str.to.re "AUG") (str.to.re "Sep") (str.to.re "SEP") (str.to.re "Oct") (str.to.re "OCT") (str.to.re "Nov") (str.to.re "NOV") (str.to.re "Dec") (str.to.re "DEC")) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; MyAgentprotocolprotocolHost\x3A\x2Fs\x28robert\x40blackcastlesoft\x2Ecom\x29data2\.activshopper\.com
(assert (not (str.in.re X (str.to.re "MyAgentprotocolprotocolHost:/s(robert@blackcastlesoft.com)data2.activshopper.com\x0a"))))
; http://www.mail-password-recovery.com/
(assert (not (str.in.re X (re.++ (str.to.re "http://www") re.allchar (str.to.re "mail-password-recovery") re.allchar (str.to.re "com/\x0a")))))
(check-sat)

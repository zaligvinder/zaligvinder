(declare-const X String)
; ^\d{2}\-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec|JAN|FEB|MAR|APR|MAY|JUN|JUL|AUG|SEP|OCT|NOV|DEC)\-\d{4}$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") (re.union (str.to.re "Jan") (str.to.re "Feb") (str.to.re "Mar") (str.to.re "Apr") (str.to.re "May") (str.to.re "Jun") (str.to.re "Jul") (str.to.re "Aug") (str.to.re "Sep") (str.to.re "Oct") (str.to.re "Nov") (str.to.re "Dec") (str.to.re "jan") (str.to.re "feb") (str.to.re "mar") (str.to.re "apr") (str.to.re "may") (str.to.re "jun") (str.to.re "jul") (str.to.re "aug") (str.to.re "sep") (str.to.re "oct") (str.to.re "nov") (str.to.re "dec") (str.to.re "JAN") (str.to.re "FEB") (str.to.re "MAR") (str.to.re "APR") (str.to.re "MAY") (str.to.re "JUN") (str.to.re "JUL") (str.to.re "AUG") (str.to.re "SEP") (str.to.re "OCT") (str.to.re "NOV") (str.to.re "DEC")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; User-Agent\x3A[^\n\r]*HTTP_RAT_
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "HTTP_RAT_\x0a"))))
; /^.{27}/sR
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 27 27) re.allchar) (str.to.re "/sR\x0a")))))
; ^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$
(assert (not (str.in.re X (re.++ (re.opt (re.comp (re.range "0" "9"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.comp (re.range "0" "9"))) (re.opt (re.comp (re.range "0" "9"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.comp (re.range "0" "9"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)

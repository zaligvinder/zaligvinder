(declare-const X String)
; [0-3]{1}[0-9]{1}(jan|JAN|feb|FEB|mar|MAR|apr|APR|may|MAY|jun|JUN|jul|JUL|aug|AUG|sep|SEP|oct|OCT|nov|NOV|dec|DEC){1}
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "0" "3")) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "jan") (str.to.re "JAN") (str.to.re "feb") (str.to.re "FEB") (str.to.re "mar") (str.to.re "MAR") (str.to.re "apr") (str.to.re "APR") (str.to.re "may") (str.to.re "MAY") (str.to.re "jun") (str.to.re "JUN") (str.to.re "jul") (str.to.re "JUL") (str.to.re "aug") (str.to.re "AUG") (str.to.re "sep") (str.to.re "SEP") (str.to.re "oct") (str.to.re "OCT") (str.to.re "nov") (str.to.re "NOV") (str.to.re "dec") (str.to.re "DEC"))) (str.to.re "\x0a")))))
; ^[a-zA-Z][a-zA-Z0-9_]+$
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_"))) (str.to.re "\x0a"))))
; /\x2ep2g([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.p2g") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; YWRtaW46cGFzc3dvcmQ\s+www\x2Ealfacleaner\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "YWRtaW46cGFzc3dvcmQ") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.alfacleaner.com\x0a")))))
(check-sat)

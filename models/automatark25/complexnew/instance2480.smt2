(declare-const X String)
; pjpoptwql\x2frlnj\d+waiting\d+ocllceclbhs\x2fgth\w+gdvsotuqwsg\x2fdxt\.hd^User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "pjpoptwql/rlnj") (re.+ (re.range "0" "9")) (str.to.re "waiting") (re.+ (re.range "0" "9")) (str.to.re "ocllceclbhs/gth") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "gdvsotuqwsg/dxt.hdUser-Agent:\x0a"))))
; Host\x3A\dKeylogger.*Onetrustyfiles\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "Keylogger") (re.* re.allchar) (str.to.re "Onetrustyfiles.com\x0a"))))
; ^\d{2}\-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec|JAN|FEB|MAR|APR|MAY|JUN|JUL|AUG|SEP|OCT|NOV|DEC)\-\d{4}$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") (re.union (str.to.re "Jan") (str.to.re "Feb") (str.to.re "Mar") (str.to.re "Apr") (str.to.re "May") (str.to.re "Jun") (str.to.re "Jul") (str.to.re "Aug") (str.to.re "Sep") (str.to.re "Oct") (str.to.re "Nov") (str.to.re "Dec") (str.to.re "jan") (str.to.re "feb") (str.to.re "mar") (str.to.re "apr") (str.to.re "may") (str.to.re "jun") (str.to.re "jul") (str.to.re "aug") (str.to.re "sep") (str.to.re "oct") (str.to.re "nov") (str.to.re "dec") (str.to.re "JAN") (str.to.re "FEB") (str.to.re "MAR") (str.to.re "APR") (str.to.re "MAY") (str.to.re "JUN") (str.to.re "JUL") (str.to.re "AUG") (str.to.re "SEP") (str.to.re "OCT") (str.to.re "NOV") (str.to.re "DEC")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; [\x80-\xFF]
(assert (not (str.in.re X (re.++ (re.range "\x80" "\xff") (str.to.re "\x0a")))))
; /\x2exlw([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.xlw") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)

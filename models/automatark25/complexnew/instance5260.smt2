(declare-const X String)
; ^[0-3]{1}[0-9]{1}[ ]{1}(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|JAN|FEB|MAR|APR|MAY|JUN|JUL|AUG|SEP|OCT|NOV|DEC|jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec){1}[ ]{1}[0-9]{2}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "0" "3")) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re " ")) ((_ re.loop 1 1) (re.union (str.to.re "Jan") (str.to.re "Feb") (str.to.re "Mar") (str.to.re "Apr") (str.to.re "May") (str.to.re "Jun") (str.to.re "Jul") (str.to.re "Aug") (str.to.re "Sep") (str.to.re "Oct") (str.to.re "Nov") (str.to.re "Dec") (str.to.re "JAN") (str.to.re "FEB") (str.to.re "MAR") (str.to.re "APR") (str.to.re "MAY") (str.to.re "JUN") (str.to.re "JUL") (str.to.re "AUG") (str.to.re "SEP") (str.to.re "OCT") (str.to.re "NOV") (str.to.re "DEC") (str.to.re "jan") (str.to.re "feb") (str.to.re "mar") (str.to.re "apr") (str.to.re "may") (str.to.re "jun") (str.to.re "jul") (str.to.re "aug") (str.to.re "sep") (str.to.re "oct") (str.to.re "nov") (str.to.re "dec"))) ((_ re.loop 1 1) (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\x2emks([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.mks") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^\{([1-9]{1}|[1-9]{1}[0-9]{1,}){1}\}\{([1-9]{1}|[1-9]{1}[0-9]{1,}){1}\}(.*)$
(assert (str.in.re X (re.++ (str.to.re "{") ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.range "1" "9")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.+ (re.range "0" "9"))))) (str.to.re "}{") ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.range "1" "9")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.+ (re.range "0" "9"))))) (str.to.re "}") (re.* re.allchar) (str.to.re "\x0a"))))
; ([\r\n ]*//[^\r\n]*)+
(assert (str.in.re X (re.++ (re.+ (re.++ (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re " "))) (str.to.re "//") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))))) (str.to.re "\x0a"))))
; (\d{5})[\.\-\+ ]?(\d{4})?
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re "-") (str.to.re "+") (str.to.re " "))) (re.opt ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)

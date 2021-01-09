(declare-const X String)
; Searchdata2\.activshopper\.comdll\x3FproductsCUSTOMSAccwww\x2Elocators\x2Ecom
(assert (not (str.in.re X (str.to.re "Searchdata2.activshopper.comdll?productsCUSTOMSAccwww.locators.com\x0a"))))
; /\x2fkills\x2etxt\x3f(t\d|p)\x3d\d{6}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//kills.txt?") (re.union (re.++ (str.to.re "t") (re.range "0" "9")) (str.to.re "p")) (str.to.re "=") ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "/U\x0a")))))
; ^[0-3]{1}[0-9]{1}[ ]{1}(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|JAN|FEB|MAR|APR|MAY|JUN|JUL|AUG|SEP|OCT|NOV|DEC|jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec){1}[ ]{1}[0-9]{2}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "0" "3")) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re " ")) ((_ re.loop 1 1) (re.union (str.to.re "Jan") (str.to.re "Feb") (str.to.re "Mar") (str.to.re "Apr") (str.to.re "May") (str.to.re "Jun") (str.to.re "Jul") (str.to.re "Aug") (str.to.re "Sep") (str.to.re "Oct") (str.to.re "Nov") (str.to.re "Dec") (str.to.re "JAN") (str.to.re "FEB") (str.to.re "MAR") (str.to.re "APR") (str.to.re "MAY") (str.to.re "JUN") (str.to.re "JUL") (str.to.re "AUG") (str.to.re "SEP") (str.to.re "OCT") (str.to.re "NOV") (str.to.re "DEC") (str.to.re "jan") (str.to.re "feb") (str.to.re "mar") (str.to.re "apr") (str.to.re "may") (str.to.re "jun") (str.to.re "jul") (str.to.re "aug") (str.to.re "sep") (str.to.re "oct") (str.to.re "nov") (str.to.re "dec"))) ((_ re.loop 1 1) (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; User-Agent\x3A\s+information\swww\x2Etopadwarereviews\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "information") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.topadwarereviews.com\x0a")))))
; ^(([+]|00)39)?((3[1-6][0-9]))(\d{7})$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "+") (str.to.re "00")) (str.to.re "39"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a3") (re.range "1" "6") (re.range "0" "9")))))
(check-sat)

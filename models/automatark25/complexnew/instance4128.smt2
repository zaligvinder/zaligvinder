(declare-const X String)
; ^(([0][0-9]|[1][0-2])|[0-9]):([0-5][0-9])( *)((AM|PM)|(A|P))$
(assert (str.in.re X (re.++ (re.union (re.range "0" "9") (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ":") (re.* (str.to.re " ")) (re.union (str.to.re "AM") (str.to.re "PM") (str.to.re "A") (str.to.re "P")) (str.to.re "\x0a") (re.range "0" "5") (re.range "0" "9"))))
; <title>(.*?)</title>
(assert (not (str.in.re X (re.++ (str.to.re "<title>") (re.* re.allchar) (str.to.re "</title>\x0a")))))
; ^\+[0-9]{1,3}\.[0-9]+\.[0-9]+$
(assert (not (str.in.re X (re.++ (str.to.re "+") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; Host\x3a[^\n\r]*A-311\s+lnzzlnbk\x2fpkrm\.finSubject\x3aBasic
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "A-311") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "lnzzlnbk/pkrm.finSubject:Basic\x0a")))))
(check-sat)

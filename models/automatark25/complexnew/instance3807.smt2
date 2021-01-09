(declare-const X String)
; Host\x3ATest\x3C\x2Fchat\x3EResultsSubject\x3A
(assert (not (str.in.re X (str.to.re "Host:Test</chat>ResultsSubject:\x0a"))))
; Subject\x3A\swww\x2Esearchwords\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.searchwords.com\x0a"))))
; [0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}
(assert (str.in.re X (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^(Sun|Mon|(T(ues|hurs))|Fri)(day|\.)?$|Wed(\.|nesday)?$|Sat(\.|urday)?$|T((ue?)|(hu?r?))\.?$
(assert (not (str.in.re X (re.union (re.++ (re.union (str.to.re "Sun") (str.to.re "Mon") (re.++ (str.to.re "T") (re.union (str.to.re "ues") (str.to.re "hurs"))) (str.to.re "Fri")) (re.opt (re.union (str.to.re "day") (str.to.re ".")))) (re.++ (str.to.re "Wed") (re.opt (re.union (str.to.re ".") (str.to.re "nesday")))) (re.++ (str.to.re "Sat") (re.opt (re.union (str.to.re ".") (str.to.re "urday")))) (re.++ (str.to.re "T") (re.union (re.++ (str.to.re "u") (re.opt (str.to.re "e"))) (re.++ (str.to.re "h") (re.opt (str.to.re "u")) (re.opt (str.to.re "r")))) (re.opt (str.to.re ".")) (str.to.re "\x0a"))))))
; /\.makeMeasurement\s*\x28[^\x3b]+?Array/i
(assert (not (str.in.re X (re.++ (str.to.re "/.makeMeasurement") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.+ (re.comp (str.to.re ";"))) (str.to.re "Array/i\x0a")))))
(check-sat)

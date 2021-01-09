(declare-const X String)
; \x5Chome\/lordofsearchToolbar\x22StarLogger\x22
(assert (str.in.re X (str.to.re "\x5chome/lordofsearchToolbar\x22StarLogger\x22\x0a")))
; \.?[a-zA-Z0-9]{1,}$
(assert (str.in.re X (re.++ (re.opt (str.to.re ".")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a"))))
; ^[a-zA-Z]:(\\|(\\[^\\/\s:*"<>|]+)+)>
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":") (re.union (str.to.re "\x5c") (re.+ (re.++ (str.to.re "\x5c") (re.+ (re.union (str.to.re "\x5c") (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))) (str.to.re ">\x0a"))))
; Host\x3ATest\x3C\x2Fchat\x3EResultsSubject\x3A
(assert (not (str.in.re X (str.to.re "Host:Test</chat>ResultsSubject:\x0a"))))
; wlpgskmv\x2flwzo\.qv#www\x2Ekliksearch\x2Ecom
(assert (str.in.re X (str.to.re "wlpgskmv/lwzo.qv#www.kliksearch.com\x0a")))
(check-sat)

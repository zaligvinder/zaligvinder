(declare-const X String)
; ^(4915[0-1]|491[0-4]\d|490\d\d|4[0-8]\d{3}|[1-3]\d{4}|[2-9]\d{3}|1[1-9]\d{2}|10[3-9]\d|102[4-9])$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "4915") (re.range "0" "1")) (re.++ (str.to.re "491") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "490") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "4") (re.range "0" "8") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.range "1" "3") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.range "2" "9") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to.re "1") (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "10") (re.range "3" "9") (re.range "0" "9")) (re.++ (str.to.re "102") (re.range "4" "9"))) (str.to.re "\x0a"))))
; search\x2econduit\x2ecom\d+sidebar\.activeshopper\.comUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "search.conduit.com") (re.+ (re.range "0" "9")) (str.to.re "sidebar.activeshopper.comUser-Agent:\x0a"))))
; Host\x3A\s+Host\x3A.*c=MicrosoftStartupStarLoggerServerX-Mailer\x3a
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "c=MicrosoftStartupStarLoggerServerX-Mailer:\x13\x0a"))))
(check-sat)

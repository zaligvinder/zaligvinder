(declare-const X String)
; www\x2Eemp3finder\x2Ecom\d+ZOMBIES\x5fHTTP\x5fGET
(assert (str.in.re X (re.++ (str.to.re "www.emp3finder.com") (re.+ (re.range "0" "9")) (str.to.re "ZOMBIES_HTTP_GET\x0a"))))
; ToolbarBasedATLRemoteFrom\x3Adcww\x2Edmcast\x2Ecom
(assert (str.in.re X (str.to.re "ToolbarBasedATLRemoteFrom:dcww.dmcast.com\x0a")))
; /filename=[^\n]*\x2exlsx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xlsx/i\x0a"))))
; ^([0-1]?[0-9]|[2][0-3]):([0-5][0-9]):([0-5][0-9])$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re "::\x0a") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9"))))
; e2give\.comADRemoteHost\x3A
(assert (not (str.in.re X (str.to.re "e2give.comADRemoteHost:\x0a"))))
(check-sat)

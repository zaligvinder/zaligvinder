(declare-const X String)
; SbAts[^\n\r]*Subject\x3a\d+dcww\x2Edmcast\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "SbAts") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Subject:") (re.+ (re.range "0" "9")) (str.to.re "dcww.dmcast.com\x0a")))))
; Try2Find\x23\x23\x23\x23ToolbarServerUser\x3A
(assert (str.in.re X (str.to.re "Try2Find####ToolbarServerUser:\x0a")))
; /^\/[a-z]{2,20}\.php\?[a-z]{2,10}\x3d[a-zA-Z0-9\x2f\x2b]+\x3d$/I
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 2 20) (re.range "a" "z")) (str.to.re ".php?") ((_ re.loop 2 10) (re.range "a" "z")) (str.to.re "=") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "/") (str.to.re "+"))) (str.to.re "=/I\x0a")))))
(check-sat)

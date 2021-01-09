(declare-const X String)
; /\x2f\x3fdp\x3d[A-Z0-9]{50}&cb\x3d[0-9]{9}/Ui
(assert (str.in.re X (re.++ (str.to.re "//?dp=") ((_ re.loop 50 50) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "&cb=") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
; toolbarplace\x2Ecom\sUser-Agent\x3a\d+\x2Fnewsurfer4\x2Fclient=BysooTBADdcww\x2Edmcast\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "toolbarplace.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "/newsurfer4/client=BysooTBADdcww.dmcast.com\x0a"))))
; Host\x3a\dATTENTION\x3A[^\n\r]*From\x3AUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "ATTENTION:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "From:User-Agent:\x0a"))))
; /HTTP\/1.[01]\r\nUser\x2dAgent\x3a\x20[ -~]+\r\nHost\x3a\x20[a-z0-9\x2d\x2e]+\.info\r\n/
(assert (str.in.re X (re.++ (str.to.re "/HTTP/1") re.allchar (re.union (str.to.re "0") (str.to.re "1")) (str.to.re "\x0d\x0aUser-Agent: ") (re.+ (re.range " " "~")) (str.to.re "\x0d\x0aHost: ") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".info\x0d\x0a/\x0a"))))
(check-sat)

(declare-const X String)
; Host\x3AuploadServer3AdapupdEFErrorSubject\x3a
(assert (str.in.re X (str.to.re "Host:uploadServer3AdapupdEFErrorSubject:\x0a")))
; ^(\d{1,4}?[.]{0,1}?\d{0,3}?)$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 1 4) (re.range "0" "9")) (re.opt (str.to.re ".")) ((_ re.loop 0 3) (re.range "0" "9"))))))
; (\w(\s)?)+
(assert (str.in.re X (re.++ (re.+ (re.++ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re "\x0a"))))
; Host\x3A\s+\x2Ftoolbar\x2Fico\x2F\dencoderserverreport\<\x2Ftitle\>
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/toolbar/ico/") (re.range "0" "9") (str.to.re "encoderserverreport</title>\x0a"))))
(check-sat)

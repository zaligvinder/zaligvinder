(declare-const X String)
; LIST\]SpamBlockerUtilityTry2FindBasicHost\x3AUser-Agent\x3AAcmeprotocolSpy
(assert (not (str.in.re X (str.to.re "LIST]SpamBlockerUtilityTry2FindBasicHost:User-Agent:AcmeprotocolSpy\x0a"))))
; ^(\-)?\d*(\.\d+)?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
; Toolbar\dcount\x2Eyok\x2EcomweatherHost\x3AUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Toolbar") (re.range "0" "9") (str.to.re "count.yok.comweatherHost:User-Agent:\x0a"))))
(check-sat)

(declare-const X String)
; DesktopSupportFiles\x2EhtmlReferer\x3Awww\x2Efreescratchandwin\x2Ecom
(assert (str.in.re X (str.to.re "DesktopSupportFiles\x13.htmlReferer:www.freescratchandwin.com\x0a")))
; ^[A-Z]{1,3}\d{6}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 3) (re.range "A" "Z")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)

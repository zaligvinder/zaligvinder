(declare-const X String)
; ^([0-9]{2})?(\([0-9]{2})\)([0-9]{3}|[0-9]{4})-[0-9]{4}$
(assert (not (str.in.re X (re.++ (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re ")") (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a(") ((_ re.loop 2 2) (re.range "0" "9"))))))
; DesktopSupportFiles\x2EhtmlReferer\x3Awww\x2Efreescratchandwin\x2Ecom
(assert (not (str.in.re X (str.to.re "DesktopSupportFiles\x13.htmlReferer:www.freescratchandwin.com\x0a"))))
(check-sat)

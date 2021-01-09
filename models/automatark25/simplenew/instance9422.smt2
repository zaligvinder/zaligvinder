(declare-const X String)
; DesktopSupportFiles\x2EhtmlReferer\x3Awww\x2Efreescratchandwin\x2Ecom
(assert (str.in.re X (str.to.re "DesktopSupportFiles\x13.htmlReferer:www.freescratchandwin.com\x0a")))
(check-sat)

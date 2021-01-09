(declare-const X String)
; /filename=[^\n]*\x2epor/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".por/i\x0a")))))
; Informationsearchnuggetspastb\x2Efreeprod\x2EcomOnlineWeb\.fcgi
(assert (str.in.re X (str.to.re "Informationsearchnugget\x13spastb.freeprod.comOnlineWeb.fcgi\x0a")))
; DesktopSupportFiles\x2EhtmlReferer\x3Awww\x2Efreescratchandwin\x2Ecom
(assert (not (str.in.re X (str.to.re "DesktopSupportFiles\x13.htmlReferer:www.freescratchandwin.com\x0a"))))
(check-sat)

(declare-const X String)
; /filename=[^\n]*\x2epng/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".png/i\x0a"))))
; \b4[0-9]\b
(assert (str.in.re X (re.++ (str.to.re "4") (re.range "0" "9") (str.to.re "\x0a"))))
; forum=\s+\x2Ftoolbar\x2Fico\x2F
(assert (str.in.re X (re.++ (str.to.re "forum=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/toolbar/ico/\x0a"))))
; DesktopSupportFiles\x2EhtmlReferer\x3Awww\x2Efreescratchandwin\x2Ecom
(assert (str.in.re X (str.to.re "DesktopSupportFiles\x13.htmlReferer:www.freescratchandwin.com\x0a")))
; GmbH\x2FcommunicatortbHost\x3AUser-Agent\x3Aadblock\x2Elinkz\x2Ecom
(assert (not (str.in.re X (str.to.re "GmbH/communicatortbHost:User-Agent:adblock.linkz.com\x0a"))))
(check-sat)

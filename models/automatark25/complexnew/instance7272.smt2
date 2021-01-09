(declare-const X String)
; ^(0|1)+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "0") (str.to.re "1"))) (str.to.re "\x0a")))))
; thereHost\x3Aselect\x2FGetwww\x2e2-seek\x2ecom\x2fsearch
(assert (not (str.in.re X (str.to.re "thereHost:select/Getwww.2-seek.com/search\x0a"))))
; /filename=[^\n]*\x2ewri/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wri/i\x0a")))))
; PASSW=\s+\x2Fta\x2FNEWS\x2F.*loomcompany\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "PASSW=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/ta/NEWS/") (re.* re.allchar) (str.to.re "loomcompany.com\x0a"))))
(check-sat)

(declare-const X String)
; /filename=[^\n]*\x2ekvl/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".kvl/i\x0a")))))
; \x2Fezsb\s+hirmvtg\x2fggqh\.kqh\dRemotetoolsbar\x2Ekuaiso\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "/ezsb") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "hirmvtg/ggqh.kqh\x1b") (re.range "0" "9") (str.to.re "Remotetoolsbar.kuaiso.com\x0a"))))
; ^[A-Z][a-z]+(tz)?(man|berg)$
(assert (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (re.opt (str.to.re "tz")) (re.union (str.to.re "man") (str.to.re "berg")) (str.to.re "\x0a"))))
(check-sat)

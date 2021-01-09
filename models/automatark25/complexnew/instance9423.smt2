(declare-const X String)
; ^(([0-9]{5})*-([0-9]{4}))|([0-9]{5})$
(assert (not (str.in.re X (re.union (re.++ (re.* ((_ re.loop 5 5) (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a"))))))
; /\x2ecov([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.cov") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; Referer\x3A.*notification.*qisezhin\x2fiqor\.ymspasServer\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Referer:") (re.* re.allchar) (str.to.re "notification\x13") (re.* re.allchar) (str.to.re "qisezhin/iqor.ym\x13spasServer:\x0a")))))
; NavExcel\s+dist\x2Eatlas\x2Dia\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "NavExcel") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "dist.atlas-ia.com\x0a")))))
; /filename=[^\n]*\x2em4b/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m4b/i\x0a")))))
(check-sat)

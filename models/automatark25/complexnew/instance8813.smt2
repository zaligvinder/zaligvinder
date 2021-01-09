(declare-const X String)
; \x2Fbar_pl\x2Fshdoclc\.fcgi\w+Referer\x3A\d+\x2Fbar_pl\x2Fshdoclc\.fcgiareHost\x3A
(assert (str.in.re X (re.++ (str.to.re "/bar_pl/shdoclc.fcgi") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Referer:") (re.+ (re.range "0" "9")) (str.to.re "/bar_pl/shdoclc.fcgiareHost:\x0a"))))
; ^[1]$|^[3]$|^[4]$|^[6]$|^[1]0$
(assert (not (str.in.re X (re.union (str.to.re "1") (str.to.re "3") (str.to.re "4") (str.to.re "6") (str.to.re "10\x0a")))))
; \$[0-9]?[0-9]?[0-9]?((\,[0-9][0-9][0-9])*)?(\.[0-9][0-9]?)?$
(assert (not (str.in.re X (re.++ (str.to.re "$") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.* (re.++ (str.to.re ",") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") (re.range "0" "9") (re.opt (re.range "0" "9")))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2esln/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".sln/i\x0a")))))
(check-sat)

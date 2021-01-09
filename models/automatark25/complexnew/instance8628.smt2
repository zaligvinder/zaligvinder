(declare-const X String)
; /\x2emet([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.met") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /filename=[^\n]*\x2epui/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pui/i\x0a"))))
; /^\/[a-f0-9]{32}\/[0-9]$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") (re.range "0" "9") (str.to.re "/Ui\x0a")))))
; (?i:[aeiou]+)\B
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "a") (str.to.re "e") (str.to.re "i") (str.to.re "o") (str.to.re "u"))) (str.to.re "\x0a")))))
; Validation of Mexican RFC for tax payers (individuals)
(assert (not (str.in.re X (str.to.re "Validation of Mexican RFC for tax payers individuals\x0a"))))
(check-sat)

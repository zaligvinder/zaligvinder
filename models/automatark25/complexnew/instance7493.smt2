(declare-const X String)
; ^[A-Z][a-z]+(tz)?(man|berg)$
(assert (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (re.opt (str.to.re "tz")) (re.union (str.to.re "man") (str.to.re "berg")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2epfa/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pfa/i\x0a")))))
; eveocczmthmmq\x2fomzl\s+zmnjgmomgbdz\x2fzzmw\.gzt
(assert (str.in.re X (re.++ (str.to.re "eveocczmthmmq/omzl") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "zmnjgmomgbdz/zzmw.gzt\x0a"))))
; libManager\x2Edll\x5Eget
(assert (str.in.re X (str.to.re "libManager.dll^get\x0a")))
(check-sat)

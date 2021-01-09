(declare-const X String)
; /^ver\x3aGhost\s+version\s+\d+\x2E\d+\s+server/smi
(assert (str.in.re X (re.++ (str.to.re "/ver:Ghost") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "version") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "server/smi\x0a"))))
; ^[9]9\d{10}|^[5]\d{10}
(assert (not (str.in.re X (re.union (re.++ (str.to.re "99") ((_ re.loop 10 10) (re.range "0" "9"))) (re.++ (str.to.re "5") ((_ re.loop 10 10) (re.range "0" "9")) (str.to.re "\x0a"))))))
; zmnjgmomgbdz\x2fzzmw\.gzt\d+Ready
(assert (str.in.re X (re.++ (str.to.re "zmnjgmomgbdz/zzmw.gzt") (re.+ (re.range "0" "9")) (str.to.re "Ready\x0a"))))
; /filename=[^\n]*\x2eaom/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".aom/i\x0a")))))
; smrtshpr-cs-.*TPSystem\s+dist\x2Eatlas\x2Dia\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "smrtshpr-cs-\x13") (re.* re.allchar) (str.to.re "TPSystem") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "dist.atlas-ia.com\x0a")))))
(check-sat)

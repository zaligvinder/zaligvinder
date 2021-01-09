(declare-const X String)
; /filename=[^\n]*\x2ejmh/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jmh/i\x0a"))))
; ^[-]?([1-9]{1}[0-9]{0,}(\.[0-9]{0,2})?|0(\.[0-9]{0,2})?|\.[0-9]{1,2})$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ (str.to.re "0") (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; (\<\?php\s+.*?((\?\>)|$))
(assert (str.in.re X (re.++ (str.to.re "\x0a<?php") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar) (str.to.re "?>"))))
; log\=\x7BIP\x3AIP-PortaURLSSKC\x7croogoo\x7c\.cfgmPOPrtCUSTOMPalToolbarUser-Agent\x3A
(assert (str.in.re X (str.to.re "log={IP:IP-PortaURLSSKC|roogoo|.cfgmPOPrtCUSTOMPalToolbarUser-Agent:\x0a")))
; /^([A-Za-z0-9+\x2f]{4})*([A-Za-z0-9+\x2f]{4}|[A-Za-z0-9+\x2f]{3}=|[A-Za-z0-9+\x2f]{2}==)$/mP
(assert (str.in.re X (re.++ (str.to.re "/") (re.* ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/")))) (re.union ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/"))) (re.++ ((_ re.loop 3 3) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/"))) (str.to.re "=")) (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/"))) (str.to.re "=="))) (str.to.re "/mP\x0a"))))
(check-sat)

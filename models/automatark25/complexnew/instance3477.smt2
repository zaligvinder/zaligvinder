(declare-const X String)
; richfind\x2Ecomdcww\x2Edmcast\x2Ecom
(assert (not (str.in.re X (str.to.re "richfind.comdcww.dmcast.com\x0a"))))
; /\x2easx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.asx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^((((H|h)(T|t)|(F|f))(T|t)(P|p)((S|s)?))\://)?(www.|[a-zA-Z0-9].)[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,6}(\:[0-9]{1,5})*(/($|[a-zA-Z0-9\.\,\;\?\'\\\+&%\$#\=~_\-]+))*$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "://") (re.union (re.++ (re.union (str.to.re "H") (str.to.re "h")) (re.union (str.to.re "T") (str.to.re "t"))) (str.to.re "F") (str.to.re "f")) (re.union (str.to.re "T") (str.to.re "t")) (re.union (str.to.re "P") (str.to.re "p")) (re.opt (re.union (str.to.re "S") (str.to.re "s"))))) (re.union (re.++ (str.to.re "www") re.allchar) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) re.allchar)) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".") ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.++ (str.to.re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (re.* (re.++ (str.to.re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re ",") (str.to.re ";") (str.to.re "?") (str.to.re "'") (str.to.re "\x5c") (str.to.re "+") (str.to.re "&") (str.to.re "%") (str.to.re "$") (str.to.re "#") (str.to.re "=") (str.to.re "~") (str.to.re "_") (str.to.re "-"))))) (str.to.re "\x0a")))))
; ^[A]$|^[C]$|^[D]$|^[F]$|^[H]$|^[K]$|^[L]$|^[M]$|^[O]$|^[P]$
(assert (not (str.in.re X (re.union (str.to.re "A") (str.to.re "C") (str.to.re "D") (str.to.re "F") (str.to.re "H") (str.to.re "K") (str.to.re "L") (str.to.re "M") (str.to.re "O") (str.to.re "P\x0a")))))
; kwd\s+User-Agent\x3Aregister\.aspUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "kwd") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:register.aspUser-Agent:\x0a")))))
(check-sat)

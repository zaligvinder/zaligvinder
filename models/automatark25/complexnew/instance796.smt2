(declare-const X String)
; ^[1]$|^[3]$|^[4]$|^[6]$|^[1]0$
(assert (str.in.re X (re.union (str.to.re "1") (str.to.re "3") (str.to.re "4") (str.to.re "6") (str.to.re "10\x0a"))))
; [a-zA-Z_:][a-zA-Z0-9_,\.\-]*?
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re ":")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re ",") (str.to.re ".") (str.to.re "-"))) (str.to.re "\x0a"))))
; User-Agent\x3A\d+Theef2\sHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "Theef2") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:\x0a")))))
; /filename=[^\n]*\x2egif/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".gif/i\x0a")))))
; /\x2edcr([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.dcr") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)

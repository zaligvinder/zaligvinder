(declare-const X String)
; v\x3B\d+more.*is\.htazmnjgmomgbdz\x2fzzmw\.gzt
(assert (str.in.re X (re.++ (str.to.re "v;") (re.+ (re.range "0" "9")) (str.to.re "more") (re.* re.allchar) (str.to.re "is.htazmnjgmomgbdz/zzmw.gzt\x0a"))))
; /\x2eskm([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.skm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)

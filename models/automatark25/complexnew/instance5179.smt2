(declare-const X String)
; /\x28compatible\x3b[A-Z]*\x3b\x29\x0d\x0a/H
(assert (str.in.re X (re.++ (str.to.re "/(compatible;") (re.* (re.range "A" "Z")) (str.to.re ";)\x0d\x0a/H\x0a"))))
; ^[a-zA-Z]\w{0,30}$
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 0 30) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2emotn/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".motn/i\x0a")))))
; User-Agent\x3A\s+GET\d+\x2Fcommunicatortb
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "GET") (re.+ (re.range "0" "9")) (str.to.re "/communicatortb\x0a")))))
; \x2Frss\d+answer\sHost\x3A
(assert (str.in.re X (re.++ (str.to.re "/rss") (re.+ (re.range "0" "9")) (str.to.re "answer") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:\x0a"))))
(check-sat)

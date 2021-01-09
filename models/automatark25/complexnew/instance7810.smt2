(declare-const X String)
; Stablecmemailyxegtd\x2fefcwgUin=PromulGate
(assert (not (str.in.re X (str.to.re "Stablecmemailyxegtd/efcwgUin=PromulGate\x0a"))))
; \x2Fsearchfast\x2F\s+Host\x3A\s+
(assert (not (str.in.re X (re.++ (str.to.re "/searchfast/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; /\x2ecis([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.cis") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^([a-zA-Z][a-zA-Z0-9]{1,100})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 1 100) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))))
; ^[A-Z]{1,2}[1-9][0-9]?[A-Z]? [0-9][A-Z]{2,}|GIR 0AA$
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) (re.range "1" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "A" "Z")) (str.to.re " ") (re.range "0" "9") ((_ re.loop 2 2) (re.range "A" "Z")) (re.* (re.range "A" "Z"))) (str.to.re "GIR 0AA\x0a")))))
(check-sat)

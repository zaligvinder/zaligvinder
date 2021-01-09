(declare-const X String)
; uuid=\s+User-Agent\x3a\d+\x5Chome\/lordofsearch
(assert (str.in.re X (re.++ (str.to.re "uuid=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "\x5chome/lordofsearch\x0a"))))
; /\x2emid([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.mid") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /filename=[^\n]*\x2edir/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dir/i\x0a")))))
; ^[0-9\s\(\)\+\-]+$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to.re "(") (str.to.re ")") (str.to.re "+") (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; ^([A-Z]{2}[0-9]{3})|([A-Z]{2}[\ ][0-9]{3})$
(assert (str.in.re X (re.union (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to.re "\x0a") ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re " ") ((_ re.loop 3 3) (re.range "0" "9"))))))
(check-sat)

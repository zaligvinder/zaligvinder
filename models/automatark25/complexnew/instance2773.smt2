(declare-const X String)
; /filename=[^\n]*\x2emid/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mid/i\x0a")))))
; forum=\s+\x2Ftoolbar\x2Fico\x2F
(assert (not (str.in.re X (re.++ (str.to.re "forum=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/toolbar/ico/\x0a")))))
(check-sat)

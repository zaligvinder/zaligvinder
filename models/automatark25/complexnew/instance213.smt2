(declare-const X String)
; ^([A-Z]|[a-z]|[0-9])(([A-Z])*(([a-z])*([0-9])*(%)*(&)*(')*(\+)*(-)*(@)*(_)*(\.)*)|(\ )[^  ])+$
(assert (not (str.in.re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")) (re.+ (re.union (re.++ (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "0" "9")) (re.* (str.to.re "%")) (re.* (str.to.re "&")) (re.* (str.to.re "'")) (re.* (str.to.re "+")) (re.* (str.to.re "-")) (re.* (str.to.re "@")) (re.* (str.to.re "_")) (re.* (str.to.re "."))) (re.++ (str.to.re " ") (re.comp (str.to.re " "))))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2edws/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dws/i\x0a"))))
(check-sat)

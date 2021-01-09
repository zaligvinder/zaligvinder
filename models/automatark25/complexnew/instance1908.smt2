(declare-const X String)
; /filename=[^\n]*\x2emp3/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mp3/i\x0a")))))
; /^GET \x2F3010[0-9A-F]{166}00000001/
(assert (not (str.in.re X (re.++ (str.to.re "/GET /3010") ((_ re.loop 166 166) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "00000001/\x0a")))))
(check-sat)

(declare-const X String)
; /nim:import\?[^\x22\x27>\s]*?filename=[^\x22\x27>\s]{485}/i
(assert (not (str.in.re X (re.++ (str.to.re "/nim:import?") (re.* (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re ">") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "filename=") ((_ re.loop 485 485) (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re ">") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/i\x0a")))))
(check-sat)

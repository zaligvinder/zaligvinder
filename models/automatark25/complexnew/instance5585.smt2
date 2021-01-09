(declare-const X String)
; Cookie\x3aAppName\x2FGRSI\|Server\|Host\x3Aorigin\x3Dsidefind
(assert (not (str.in.re X (str.to.re "Cookie:AppName/GRSI|Server|\x13Host:origin=sidefind\x0a"))))
; /nim:import\?[^\x22\x27>\s]*?filename=[^\x22\x27>\s]{485}/i
(assert (not (str.in.re X (re.++ (str.to.re "/nim:import?") (re.* (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re ">") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "filename=") ((_ re.loop 485 485) (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re ">") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/i\x0a")))))
; www\.123mania\.com\x2F0409areZC-Bridge
(assert (str.in.re X (str.to.re "www.123mania.com/0409areZC-Bridge\x0a")))
(check-sat)

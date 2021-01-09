(declare-const X String)
; <script[\s\S]*?</script([\s\S]*?)>
(assert (not (str.in.re X (re.++ (str.to.re "<script") (re.* (re.union (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "</script") (re.* (re.union (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ">\x0a")))))
; [\dA-Za-z]+
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a")))))
; (facebook|twitter|youtube)
(assert (str.in.re X (re.++ (re.union (str.to.re "facebook") (str.to.re "twitter") (str.to.re "youtube")) (str.to.re "\x0a"))))
; \x22reaction\x2Etxt\x22\d+sErverdist\x2Eatlas\x2Dia\x2EcomUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "\x22reaction.txt\x22") (re.+ (re.range "0" "9")) (str.to.re "sErverdist.atlas-ia.comUser-Agent:\x0a")))))
(check-sat)

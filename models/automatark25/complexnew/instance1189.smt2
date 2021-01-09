(declare-const X String)
; /http:\\/\/\.?video.google.\w{2,3}\/videoplay\?docid=([a-z0-9-_]+)/i
(assert (str.in.re X (re.++ (str.to.re "/http:\x5c//") (re.opt (str.to.re ".")) (str.to.re "video") re.allchar (str.to.re "google") re.allchar ((_ re.loop 2 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/videoplay?docid=") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "_"))) (str.to.re "/i\x0a"))))
; /filename=[^\n]*\x2eflv/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".flv/i\x0a")))))
(check-sat)

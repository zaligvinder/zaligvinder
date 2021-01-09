(declare-const X String)
; Host\x3AHost\x3Aalertseqepagqfphv\x2fsfd
(assert (str.in.re X (str.to.re "Host:Host:alertseqepagqfphv/sfd\x0a")))
; tipHost\x3AGirafaClient\x0d\x0asubject=GhostVoice
(assert (str.in.re X (str.to.re "tipHost:GirafaClient\x13\x0d\x0asubject=GhostVoice\x0a")))
; ^(\d{5}-\d{2}-\d{7})*$
(assert (not (str.in.re X (re.++ (re.* (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")))) (str.to.re "\x0a")))))
; /^\/\x3f[1-9][A-Za-z0-9~_-]{240}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//?") (re.range "1" "9") ((_ re.loop 240 240) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "~") (str.to.re "_") (str.to.re "-"))) (str.to.re "/Ui\x0a")))))
(check-sat)

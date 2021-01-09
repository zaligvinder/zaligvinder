(declare-const X String)
; /\x26uid\x3d[a-f0-9]{16}($|\x26)/U
(assert (str.in.re X (re.++ (str.to.re "/&uid=") ((_ re.loop 16 16) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "&/U\x0a"))))
; /filename=[^\n]*\x2em3u/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m3u/i\x0a")))))
; User-Agent\x3Aetbuviaebe\x2feqv\.bvv
(assert (not (str.in.re X (str.to.re "User-Agent:etbuviaebe/eqv.bvv\x0a"))))
; /filename=[^\n]*\x2eabc/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".abc/i\x0a"))))
(check-sat)

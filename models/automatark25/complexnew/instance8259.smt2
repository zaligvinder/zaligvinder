(declare-const X String)
; SpyAgent\d+sErver\s+User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "SpyAgent") (re.+ (re.range "0" "9")) (str.to.re "sErver") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a")))))
; ^(\d+\.\d+)$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9"))))))
; /<[A-Z]+\s+[^>]*?padding-left\x3A\x2D1000px\x3B[^>]*text-indent\x3A\x2D1000px/smi
(assert (not (str.in.re X (re.++ (str.to.re "/<") (re.+ (re.range "A" "Z")) (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.comp (str.to.re ">"))) (str.to.re "padding-left:-1000px;") (re.* (re.comp (str.to.re ">"))) (str.to.re "text-indent:-1000px/smi\x0a")))))
(check-sat)

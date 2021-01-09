(declare-const X String)
; ^[A-Z]{1,3}\d{6}$
(assert (str.in.re X (re.++ ((_ re.loop 1 3) (re.range "A" "Z")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; pjpoptwql\x2frlnj\d+waiting\d+ocllceclbhs\x2fgth\w+gdvsotuqwsg\x2fdxt\.hd^User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "pjpoptwql/rlnj") (re.+ (re.range "0" "9")) (str.to.re "waiting") (re.+ (re.range "0" "9")) (str.to.re "ocllceclbhs/gth") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "gdvsotuqwsg/dxt.hdUser-Agent:\x0a")))))
(check-sat)

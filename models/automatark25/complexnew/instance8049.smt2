(declare-const X String)
; pjpoptwql\x2frlnj\d+waiting\d+ocllceclbhs\x2fgth\w+gdvsotuqwsg\x2fdxt\.hd^User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "pjpoptwql/rlnj") (re.+ (re.range "0" "9")) (str.to.re "waiting") (re.+ (re.range "0" "9")) (str.to.re "ocllceclbhs/gth") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "gdvsotuqwsg/dxt.hdUser-Agent:\x0a")))))
; /\x2exls([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.xls") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)

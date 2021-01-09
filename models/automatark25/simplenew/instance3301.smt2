(declare-const X String)
; WinSession\w+asdbiz\x2Ebiz\dpjpoptwql\x2frlnj\x2Fpagead\x2Fads\?
(assert (str.in.re X (re.++ (str.to.re "WinSession") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "asdbiz.biz") (re.range "0" "9") (str.to.re "pjpoptwql/rlnj/pagead/ads?\x0a"))))
(check-sat)

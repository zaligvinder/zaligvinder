(declare-const X String)
; WinSession\w+asdbiz\u{2E}biz\dpjpoptwql\u{2f}rlnj\u{2F}pagead\u{2F}ads\?
(assert (str.in_re X (re.++ (str.to_re "WinSession") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "asdbiz.biz") (re.range "0" "9") (str.to_re "pjpoptwql/rlnj/pagead/ads?\u{a}"))))
(check-sat)

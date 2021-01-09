(declare-const X String)
; search\.dropspam\.com.*pjpoptwql\x2frlnj
(assert (not (str.in.re X (re.++ (str.to.re "search.dropspam.com") (re.* re.allchar) (str.to.re "pjpoptwql/rlnj\x0a")))))
(check-sat)

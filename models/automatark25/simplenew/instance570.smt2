(declare-const X String)
; hg diff --nodates | egrep -e "---" -v | egrep -e "^-" -c
(assert (not (str.in.re X (re.union (str.to.re "hg diff --nodates ") (str.to.re " egrep -e \x22---\x22 -v ") (str.to.re " egrep -e \x22-\x22 -c\x0a")))))
(check-sat)

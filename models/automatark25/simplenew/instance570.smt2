(declare-const X String)
; hg diff --nodates | egrep -e "---" -v | egrep -e "^-" -c
(assert (not (str.in_re X (re.union (str.to_re "hg diff --nodates ") (str.to_re " egrep -e \u{22}---\u{22} -v ") (str.to_re " egrep -e \u{22}-\u{22} -c\u{a}")))))
(check-sat)

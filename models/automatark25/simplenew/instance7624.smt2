(declare-const X String)
; ^(http(s?):\/\/)?(www\.)?youtu(be)?\.([a-z])+\/(watch(.*?)(\?|\&)v=)?(.*?)(&(.)*)?$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (str.to_re "http") (re.opt (str.to_re "s")) (str.to_re "://"))) (re.opt (str.to_re "www.")) (str.to_re "youtu") (re.opt (str.to_re "be")) (str.to_re ".") (re.+ (re.range "a" "z")) (str.to_re "/") (re.opt (re.++ (str.to_re "watch") (re.* re.allchar) (re.union (str.to_re "?") (str.to_re "&")) (str.to_re "v="))) (re.* re.allchar) (re.opt (re.++ (str.to_re "&") (re.* re.allchar))) (str.to_re "\u{a}")))))
(check-sat)

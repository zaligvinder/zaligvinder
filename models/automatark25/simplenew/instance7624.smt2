(declare-const X String)
; ^(http(s?):\/\/)?(www\.)?youtu(be)?\.([a-z])+\/(watch(.*?)(\?|\&)v=)?(.*?)(&(.)*)?$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://"))) (re.opt (str.to.re "www.")) (str.to.re "youtu") (re.opt (str.to.re "be")) (str.to.re ".") (re.+ (re.range "a" "z")) (str.to.re "/") (re.opt (re.++ (str.to.re "watch") (re.* re.allchar) (re.union (str.to.re "?") (str.to.re "&")) (str.to.re "v="))) (re.* re.allchar) (re.opt (re.++ (str.to.re "&") (re.* re.allchar))) (str.to.re "\x0a")))))
(check-sat)

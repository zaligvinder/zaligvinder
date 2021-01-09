(declare-const X String)
; /<linearGradient[^>]*>\s*<\x2flinearGradient>/i
(assert (not (str.in.re X (re.++ (str.to.re "/<linearGradient") (re.* (re.comp (str.to.re ">"))) (str.to.re ">") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "</linearGradient>/i\x0a")))))
(check-sat)

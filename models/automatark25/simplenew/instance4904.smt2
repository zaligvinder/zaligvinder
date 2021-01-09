(declare-const X String)
; <script[\\.|\\W|\\w]*?</script>
(assert (str.in.re X (re.++ (str.to.re "<script") (re.* (re.union (str.to.re "\x5c") (str.to.re ".") (str.to.re "|") (str.to.re "W") (str.to.re "w"))) (str.to.re "</script>\x0a"))))
(check-sat)

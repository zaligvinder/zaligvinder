(declare-const X String)
; <script[^>]*>[\w|\t|\r|\W]*</script>
(assert (not (str.in.re X (re.++ (str.to.re "<script") (re.* (re.comp (str.to.re ">"))) (str.to.re ">") (re.* (re.union (str.to.re "|") (str.to.re "\x09") (str.to.re "\x0d") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "</script>\x0a")))))
(check-sat)

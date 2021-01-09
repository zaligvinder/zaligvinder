(declare-const X String)
; (Word1|Word2).*?(10|[1-9])
(assert (not (str.in.re X (re.++ (re.* re.allchar) (re.union (str.to.re "10") (re.range "1" "9")) (str.to.re "\x0aWord") (re.union (str.to.re "1") (str.to.re "2"))))))
; /mmlocate[^\x00]*?([\x3b\x7c\x26\x60]|\x24\x28)/
(assert (str.in.re X (re.++ (str.to.re "/mmlocate") (re.* (re.comp (str.to.re "\x00"))) (re.union (str.to.re "$(") (str.to.re ";") (str.to.re "|") (str.to.re "&") (str.to.re "`")) (str.to.re "/\x0a"))))
; 1\-extreme\x2Ebizasdbiz\x2Ebizfrom\x7croogoo\x7cCurrentiOpus
(assert (not (str.in.re X (str.to.re "1-extreme.bizasdbiz.bizfrom|roogoo|CurrentiOpus\x0a"))))
; (<meta [.\w\W]*?\>)|(<style [.\w\W]*?</style>)|(<link [.\w\W]*?\>)|(<script [.\w\W]*?</script>)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "<meta ") (re.* (re.union (str.to.re ".") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ">")) (re.++ (str.to.re "<style ") (re.* (re.union (str.to.re ".") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "</style>")) (re.++ (str.to.re "<link ") (re.* (re.union (str.to.re ".") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ">")) (re.++ (str.to.re "\x0a<script ") (re.* (re.union (str.to.re ".") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "</script>"))))))
(check-sat)

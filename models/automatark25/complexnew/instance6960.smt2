(declare-const X String)
; /\x2fb\x2fshoe\x2f[0-9]{3,5}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//b/shoe/") ((_ re.loop 3 5) (re.range "0" "9")) (str.to.re "/U\x0a")))))
; User-Agent\x3aUser-Agent\x3AReport\x2EHost\x3Afhfksjzsfu\x2fahm\.uqs
(assert (not (str.in.re X (str.to.re "User-Agent:User-Agent:Report.Host:fhfksjzsfu/ahm.uqs\x0a"))))
; (<meta [.\w\W]*?\>)|(<style [.\w\W]*?</style>)|(<link [.\w\W]*?\>)|(<script [.\w\W]*?</script>)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "<meta ") (re.* (re.union (str.to.re ".") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ">")) (re.++ (str.to.re "<style ") (re.* (re.union (str.to.re ".") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "</style>")) (re.++ (str.to.re "<link ") (re.* (re.union (str.to.re ".") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ">")) (re.++ (str.to.re "\x0a<script ") (re.* (re.union (str.to.re ".") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "</script>"))))))
; SAcc\d+Seconds\-\x2Fcommunicatortb
(assert (str.in.re X (re.++ (str.to.re "SAcc") (re.+ (re.range "0" "9")) (str.to.re "Seconds-/communicatortb\x0a"))))
(check-sat)

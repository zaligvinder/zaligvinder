(declare-const X String)
; YWRtaW46YWRtaW4www\x2Ee-finder\x2EccNSIS_DOWNLOADHost\x3A
(assert (str.in.re X (str.to.re "YWRtaW46YWRtaW4www.e-finder.ccNSIS_DOWNLOADHost:\x0a")))
; <[iI][fF][rR][aA][mM][eE]([^>]*[^/>]*[/>]*[>])
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.union (str.to.re "i") (str.to.re "I")) (re.union (str.to.re "f") (str.to.re "F")) (re.union (str.to.re "r") (str.to.re "R")) (re.union (str.to.re "a") (str.to.re "A")) (re.union (str.to.re "m") (str.to.re "M")) (re.union (str.to.re "e") (str.to.re "E")) (str.to.re "\x0a") (re.* (re.comp (str.to.re ">"))) (re.* (re.union (str.to.re "/") (str.to.re ">"))) (re.* (re.union (str.to.re "/") (str.to.re ">"))) (str.to.re ">")))))
; /<linearGradient[^>]*>\s*<\x2flinearGradient>/i
(assert (not (str.in.re X (re.++ (str.to.re "/<linearGradient") (re.* (re.comp (str.to.re ">"))) (str.to.re ">") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "</linearGradient>/i\x0a")))))
; /filename=[^\n]*\x2eotf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".otf/i\x0a")))))
(check-sat)

(declare-const X String)
; ProAgentHost\x3aHost\x3AiOpuss_sq=aolsnssigninwininet
(assert (str.in.re X (str.to.re "ProAgentHost:Host:iOpuss_sq=aolsnssigninwininet\x0a")))
; ^((AL)|(AK)|(AS)|(AZ)|(AR)|(CA)|(CO)|(CT)|(DE)|(DC)|(FM)|(FL)|(GA)|(GU)|(HI)|(ID)|(IL)|(IN)|(IA)|(KS)|(KY)|(LA)|(ME)|(MH)|(MD)|(MA)|(MI)|(MN)|(MS)|(MO)|(MT)|(NE)|(NV)|(NH)|(NJ)|(NM)|(NY)|(NC)|(ND)|(MP)|(OH)|(OK)|(OR)|(PW)|(PA)|(PR)|(RI)|(SC)|(SD)|(TN)|(TX)|(UT)|(VT)|(VI)|(VA)|(WA)|(WV)|(WI)|(WY))$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "AL") (str.to.re "AK") (str.to.re "AS") (str.to.re "AZ") (str.to.re "AR") (str.to.re "CA") (str.to.re "CO") (str.to.re "CT") (str.to.re "DE") (str.to.re "DC") (str.to.re "FM") (str.to.re "FL") (str.to.re "GA") (str.to.re "GU") (str.to.re "HI") (str.to.re "ID") (str.to.re "IL") (str.to.re "IN") (str.to.re "IA") (str.to.re "KS") (str.to.re "KY") (str.to.re "LA") (str.to.re "ME") (str.to.re "MH") (str.to.re "MD") (str.to.re "MA") (str.to.re "MI") (str.to.re "MN") (str.to.re "MS") (str.to.re "MO") (str.to.re "MT") (str.to.re "NE") (str.to.re "NV") (str.to.re "NH") (str.to.re "NJ") (str.to.re "NM") (str.to.re "NY") (str.to.re "NC") (str.to.re "ND") (str.to.re "MP") (str.to.re "OH") (str.to.re "OK") (str.to.re "OR") (str.to.re "PW") (str.to.re "PA") (str.to.re "PR") (str.to.re "RI") (str.to.re "SC") (str.to.re "SD") (str.to.re "TN") (str.to.re "TX") (str.to.re "UT") (str.to.re "VT") (str.to.re "VI") (str.to.re "VA") (str.to.re "WA") (str.to.re "WV") (str.to.re "WI") (str.to.re "WY")) (str.to.re "\x0a")))))
; ^(3(([0-5][0-9]{0,2})|60))|([1-2][0-9]{2})|(^[1-9]$)|(^[1-9]{2}$)$
(assert (not (str.in.re X (re.union (re.++ (str.to.re "3") (re.union (re.++ (re.range "0" "5") ((_ re.loop 0 2) (re.range "0" "9"))) (str.to.re "60"))) (re.++ (re.range "1" "2") ((_ re.loop 2 2) (re.range "0" "9"))) (re.range "1" "9") (re.++ ((_ re.loop 2 2) (re.range "1" "9")) (str.to.re "\x0a"))))))
; ^[A-Z]{3}-[0-9]{4}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; ChildWebGuardian\d+Subject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "ChildWebGuardian") (re.+ (re.range "0" "9")) (str.to.re "Subject:\x0a")))))
(check-sat)

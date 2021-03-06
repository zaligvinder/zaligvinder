(set-info :smt-lib-version 2.6)
(set-logic ALL)
(set-info :source |
Generated by: Hung-En Wang, Shih-Yu Chen, Fang Yu, and Jie-Hong R. Jiang
Generated on: 2019-02-28
Generator: modified from Kaluza benchmarks
Application: Security analysis of string manipulating web applications with string length constraints
Target solver: ABC, CVC4, Norn, S3P, Trau, Z3-str3
Publication:
Hung-En Wang, Shih-Yu Chen, Fang Yu, Jie-Hong R. Jiang:
A symbolic model checking approach to the analysis of string and length constraints. ASE 2018: 623-633
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unknown)

(declare-fun T_10c () Bool)
(declare-fun T_10d () Bool)
(declare-fun T_SELECT_17 () Bool)
(declare-fun T_c1 () Bool)
(declare-fun T_c2 () Bool)
(declare-fun I0_287 () Int)
(declare-fun I0_291 () Int)
(declare-fun I1_287 () Int)
(declare-fun I1_291 () Int)
(declare-fun I2_287 () Int)
(declare-fun I2_291 () Int)
(declare-fun PCTEMP_LHS_75 () Int)
(declare-fun T_c6 () Int)
(declare-fun NEW_DGNode_494 () String)
(declare-fun NEW_DGNode_495 () String)
(declare-fun NEW_DGNode_624 () String)
(declare-fun NEW_DGNode_625 () String)
(declare-fun NEW_DGNode_753 () String)
(declare-fun NEW_DGNode_754 () String)
(declare-fun NEW_DGNode_756 () String)
(declare-fun NEW_DGNode_757 () String)
(declare-fun PCTEMP_LHS_76 () String)
(declare-fun PCTEMP_LHS_79 () String)
(declare-fun T1_287 () String)
(declare-fun T1_291 () String)
(declare-fun T2_287 () String)
(declare-fun T2_291 () String)
(declare-fun T3_287 () String)
(declare-fun T3_291 () String)
(declare-fun T_c5 () String)
(assert (= T_c5 NEW_DGNode_625))
(assert (= NEW_DGNode_625 NEW_DGNode_624))
(assert (= NEW_DGNode_625 NEW_DGNode_494))
(assert (= NEW_DGNode_494 NEW_DGNode_495))
(assert (= NEW_DGNode_494 (str.++ T1_287 T2_287)))
(assert (= T2_287 (str.++ PCTEMP_LHS_76 T3_287)))
(assert (= NEW_DGNode_495 (str.++ T1_291 T2_291)))
(assert (= T2_291 (str.++ PCTEMP_LHS_79 T3_291)))
(assert (= PCTEMP_LHS_79 NEW_DGNode_757))
(assert (= NEW_DGNode_757 NEW_DGNode_756))
(assert (= NEW_DGNode_757 NEW_DGNode_754))
(assert (= NEW_DGNode_754 NEW_DGNode_753))
(assert (not (str.in.re NEW_DGNode_754 (str.to.re ""))))
(assert (not (str.in.re NEW_DGNode_753 (str.to.re "+"))))
(assert (not (str.in.re NEW_DGNode_756 (str.to.re "%"))))
(assert (not (str.in.re NEW_DGNode_624 (str.to.re "&"))))
(assert (= T_SELECT_17 (not (= PCTEMP_LHS_75 (- 1)))))
(assert T_c2)
(assert (= T_c2 (not T_c1)))
(assert (= T_c1 (= PCTEMP_LHS_75 (- 1))))
(assert (= I0_287 (- PCTEMP_LHS_75 0)))
(assert (>= PCTEMP_LHS_75 0))
(assert (>= I2_291 T_c6))
(assert (= I2_291 I1_291))
(assert (<= I2_291 I1_291))
(assert (= I0_291 (- I2_291 T_c6)))
(assert (>= T_c6 0))
(assert (= T_c6 (+ PCTEMP_LHS_75 1)))
(assert (<= PCTEMP_LHS_75 I1_287))
(assert (= I2_287 I1_287))
(assert (= I1_287 (str.len T_c5))) ; len 0
(assert (= I1_291 (str.len T_c5))) ; len 0
(assert (= 0 (str.len T1_287))) ; len 1
(assert (= I0_287 (str.len PCTEMP_LHS_76))) ; len 2
(assert (= T_c6 (str.len T1_291))) ; len 3
(assert (= I0_291 (str.len PCTEMP_LHS_79))) ; len 4
(assert T_10c)
(assert T_10d)
(assert (= T_10d (not T_10c)))
(check-sat)
(exit)

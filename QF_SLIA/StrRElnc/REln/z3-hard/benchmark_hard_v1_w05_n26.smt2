(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (re.+ (re.+ (str.to_re "338"))) (re.range "4" "7")))))

(assert (< (+ (* (- 8) (str.len x)) (- (str.to_int x))) 7))
(assert (< (* (- 2) (str.to_int x)) 90))
(assert (= (+ (* (- 10) (str.len x)) (* 7 (str.to_int x))) 3))

(check-sat)
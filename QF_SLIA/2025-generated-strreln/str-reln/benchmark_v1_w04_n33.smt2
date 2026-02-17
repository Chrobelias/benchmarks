(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.++ (re.* (re.range "0" "3")) (str.to_re "3")) (re.+ (str.to_re "6")))))

(assert (<= (+ (* (- 2) (str.len x)) (- (str.to_int x))) 69))
(assert (= (+ (* 8 (str.len x)) (* (- 8) (str.to_int x))) 88))

(check-sat)
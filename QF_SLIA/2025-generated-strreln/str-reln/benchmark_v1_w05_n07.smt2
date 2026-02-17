(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.+ (re.++ (re.* (str.to_re "858")) (str.to_re "8"))) (str.to_re "491"))))

(assert (<= (+ (* (- 4) (str.len x)) (* (- 7) (str.to_int x))) 73))
(assert (> (+ (- (str.len x)) (* 5 (str.to_int x))) 61))
(assert (<= (str.to_int x) 75))

(check-sat)
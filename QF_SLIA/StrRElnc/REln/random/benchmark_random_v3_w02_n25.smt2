(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.* (re.union (str.to_re "65") (re.* (str.to_re "6"))))))
(assert (str.in_re z (re.++ (re.union (str.to_re "708") (re.++ (re.+ (str.to_re "7")) (str.to_re "196"))) (str.to_re "16"))))
(assert (str.in_re x (re.union (re.++ (str.to_re "51") (re.union (re.+ (str.to_re "11")) (str.to_re "278"))) (str.to_re "157"))))

(assert (<= (+ (* (- 9) (str.len x)) (- (str.len y)) (* 10 (str.len z))) 60))
(assert (>= (+ (* 10 (str.to_int x)) (* 4 (str.to_int y)) (* 4 (str.to_int z))) 74))

(check-sat)
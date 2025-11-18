(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 100))

(assert (str.in_re x (re.++ (re.* (re.+ (str.to_re "903"))) (str.to_re "81"))))
(assert (str.in_re y (re.++ (re.union (str.to_re "911") (re.+ (re.range "0" "7"))) (str.to_re "2"))))
(assert (str.in_re z (re.+ (re.+ (re.+ (re.* (str.to_re "36")))))))

(assert (> (+ (* (- 8) (str.len x)) (* 3 (str.len y)) (- (str.len z))) 12))
(assert (<= (+ (* (- 6) (str.len z)) (str.to_int z)) 19))
(assert (<= (+ (* (- 2) (str.len x)) (* 5 (str.len y)) (* (- 2) (str.len z))) 53))

(check-sat)
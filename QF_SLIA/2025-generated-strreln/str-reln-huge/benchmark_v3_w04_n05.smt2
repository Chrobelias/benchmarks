(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 10))

(assert (str.in_re x (re.++ (re.++ (re.union (re.* (str.to_re "217")) (str.to_re "227")) (str.to_re "280")) (str.to_re "356"))))
(assert (str.in_re y (re.++ (str.to_re "65") (re.* (str.to_re "26")))))
(assert (str.in_re z (re.* (str.to_re "3"))))

(assert (<= (+ (* (- 7) (str.len x)) (str.len y) (* (- 2) (str.len z))) 47))
(assert (= (+ (- (str.to_int x)) (str.to_int y) (* 7 (str.to_int z))) 88))
(assert (> (+ (* (- 4) (str.len x)) (* (- 7) (str.len y)) (* 7 (str.len z))) 75))
(assert (< (+ (* 8 (str.len y)) (* (- 7) (str.len z))) 91))

(check-sat)
(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.* (re.++ (str.to_re "823") (str.to_re "28")))))
(assert (str.in_re z (re.++ (str.to_re "43") (re.+ (str.to_re "45")))))
(assert (str.in_re y (re.union (str.to_re "548") (re.++ (re.* (str.to_re "74")) (str.to_re "57")))))

(assert (> (+ (* (- 9) (str.len x)) (* 2 (str.len y)) (* (- 6) (str.to_int y)) (* 7 (str.to_int z))) 95))
(assert (< (+ (* 3 (str.len x)) (* (- 9) (str.len y)) (- (str.len z))) 34))

(check-sat)
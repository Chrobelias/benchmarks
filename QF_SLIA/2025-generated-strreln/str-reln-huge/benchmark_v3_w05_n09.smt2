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

(assert (str.in_re x (re.++ (re.++ (str.to_re "715") (str.to_re "74")) (re.* (str.to_re "549")))))
(assert (str.in_re y (re.+ (re.++ (re.+ (str.to_re "6")) (str.to_re "21")))))
(assert (str.in_re z (re.++ (re.union (str.to_re "99") (re.* (str.to_re "484"))) (str.to_re "921"))))

(assert (> (+ (* (- 5) (str.len x)) (* 5 (str.len z)) (* (- 9) (str.to_int x)) (* (- 4) (str.to_int z))) 31))
(assert (< (+ (* (- 6) (str.len x)) (* 9 (str.len y)) (* (- 8) (str.len z))) 95))
(assert (< (+ (- (str.to_int x)) (* (- 5) (str.to_int y)) (* (- 5) (str.to_int z))) 78))
(assert (= (+ (* 4 (str.to_int x)) (* (- 5) (str.to_int y)) (* 2 (str.to_int z))) 17))

(check-sat)
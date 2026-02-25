(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.++ (str.to_re "11") (re.+ (str.to_re "9")))))
(assert (str.in_re y (re.++ (str.to_re "79") (re.union (str.to_re "642") (re.* (re.* (str.to_re "49")))))))
(assert (str.in_re z (re.union (re.* (str.to_re "3")) (str.to_re "80"))))

(assert (>= (+ (- (str.len x)) (- (str.len y)) (str.len z)) 27))
(assert (<= (+ (* 5 (str.to_int x)) (* (- 8) (str.to_int y)) (* 9 (str.to_int z))) 52))

(check-sat)
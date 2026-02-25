(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))

(assert (str.in_re y (re.++ (str.to_re "406") (re.+ (re.* (str.to_re "661"))))))
(assert (str.in_re z (re.++ (re.+ (str.to_re "15")) (str.to_re "308"))))
(assert (str.in_re x (re.++ (re.union (str.to_re "695") (str.to_re "50")) (re.+ (str.to_re "730")))))

(assert (> (+ (* (- 5) (str.len x)) (* 6 (str.len y)) (* 2 (str.len z))) 14))
(assert (< (+ (* 4 (str.to_int x)) (- (str.to_int y)) (* 5 (str.to_int z))) 70))

(check-sat)
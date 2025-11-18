(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.++ (re.* (str.to_re "632")) (str.to_re "68"))))
(assert (str.in_re y (re.* (re.union (re.union (str.to_re "954") (str.to_re "49")) (str.to_re "47")))))
(assert (str.in_re z (re.++ (re.+ (re.++ (str.to_re "2") (re.range "0" "8"))) (re.range "2" "5"))))

(assert (<= (+ (str.to_int x) (* 7 (str.to_int y)) (* 7 (str.to_int z))) 70))
(assert (>= (+ (* 3 (str.len x)) (* 7 (str.len y)) (str.len z)) 33))
(assert (<= (+ (* 3 (str.len x)) (* 5 (str.len y)) (- (str.len z))) 72))

(check-sat)
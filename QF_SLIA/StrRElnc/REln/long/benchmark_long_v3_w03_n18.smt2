(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re z (re.++ (re.+ (str.to_re "1")) (re.* (str.to_re "235")))))
(assert (str.in_re x (re.* (re.++ (str.to_re "465") (str.to_re "347")))))
(assert (str.in_re y (re.union (str.to_re "478") (re.* (str.to_re "463")))))

(assert (> (+ (* (- 3) (str.to_int x)) (* 9 (str.to_int y)) (str.to_int z)) 63))
(assert (>= (+ (* 3 (str.len x)) (* (- 10) (str.len y)) (* (- 4) (str.len z))) 10))
(assert (>= (+ (* 5 (str.len x)) (* 9 (str.len y)) (str.len z)) 50))

(check-sat)
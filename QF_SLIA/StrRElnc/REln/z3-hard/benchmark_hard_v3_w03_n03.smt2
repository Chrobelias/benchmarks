(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.* (re.++ (re.++ (str.to_re "143") (str.to_re "96")) (str.to_re "65")))))
(assert (str.in_re z (re.* (re.+ (re.union (str.to_re "41") (str.to_re "1"))))))
(assert (str.in_re y (re.++ (str.to_re "3") (re.+ (str.to_re "381")))))

(assert (>= (+ (* 6 (str.len x)) (* 3 (str.len y)) (* (- 9) (str.len z))) 70))
(assert (< (+ (* 8 (str.to_int x)) (* 8 (str.to_int y)) (* (- 2) (str.to_int z))) 96))
(assert (< (+ (* (- 5) (str.len x)) (str.len y) (* (- 10) (str.len z))) 27))

(check-sat)
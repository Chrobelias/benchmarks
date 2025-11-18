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

(assert (str.in_re x (re.++ (re.union (re.* (str.to_re "224")) (str.to_re "49")) (str.to_re "77"))))
(assert (str.in_re y (re.union (re.* (re.+ (str.to_re "564"))) (re.* (str.to_re "543")))))
(assert (str.in_re z (re.++ (re.union (str.to_re "87") (re.* (str.to_re "3"))) (re.* (str.to_re "78")))))

(assert (>= (+ (* 5 (str.len y)) (str.len z) (* (- 6) (str.to_int x))) 94))
(assert (< (+ (* 7 (str.len x)) (str.len y) (* (- 9) (str.len z))) 87))
(assert (< (+ (* 3 (str.len x)) (* (- 8) (str.len y)) (* 7 (str.len z))) 22))

(check-sat)
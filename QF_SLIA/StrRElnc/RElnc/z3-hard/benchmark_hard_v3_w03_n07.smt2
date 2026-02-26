(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ z x) (str.++ y "14")))

(assert (str.in_re z (re.++ (re.+ (str.to_re "347")) (re.* (str.to_re "4")))))
(assert (str.in_re y (re.union (re.++ (re.range "1" "5") (re.+ (str.to_re "686"))) (re.* (re.range "3" "8")))))
(assert (str.in_re x (re.++ (str.to_re "5") (re.union (re.* (str.to_re "454")) (str.to_re "614")))))

(assert (> (+ (* (- 4) (str.len x)) (* (- 6) (str.len y)) (* 9 (str.len z))) 1))
(assert (= (+ (* (- 8) (str.len x)) (* 7 (str.len y)) (* (- 8) (str.len z))) 83))
(assert (= (+ (* 9 (str.to_int x)) (* (- 2) (str.to_int y)) (* (- 7) (str.to_int z))) 10))

(check-sat)
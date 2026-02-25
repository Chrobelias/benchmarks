(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "48")) (re.union (str.to_re "9") (str.to_re "80")))))
(assert (str.in_re z (re.+ (re.++ (str.to_re "82") (str.to_re "14")))))
(assert (str.in_re y (re.++ (re.+ (re.union (re.range "6" "9") (str.to_re "0"))) (str.to_re "154"))))

(assert (= (+ (* (- 3) (str.len x)) (* 8 (str.len y)) (* (- 6) (str.to_int y))) 80))
(assert (>= (+ (* (- 10) (str.to_int x)) (str.to_int y) (* 5 (str.to_int z))) 38))

(check-sat)
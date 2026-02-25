(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.++ (str.to_re "972") (re.++ (str.to_re "13") (re.* (str.to_re "3"))))))
(assert (str.in_re x (re.++ (re.range "1" "9") (re.* (re.union (re.* (str.to_re "372")) (re.range "6" "8"))))))
(assert (str.in_re y (re.* (re.++ (re.+ (str.to_re "82")) (str.to_re "8")))))

(assert (= (+ (* (- 2) (str.len x)) (str.len y) (* (- 8) (str.len z))) 49))
(assert (= (+ (* (- 5) (str.len x)) (* 2 (str.len z)) (* (- 7) (str.to_int y))) 64))

(check-sat)
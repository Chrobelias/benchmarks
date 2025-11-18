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

(assert (str.in_re x (re.union (str.to_re "8") (re.union (re.range "1" "3") (re.+ (re.+ (str.to_re "402")))))))
(assert (str.in_re y (re.union (re.++ (str.to_re "3") (re.+ (str.to_re "97"))) (str.to_re "743"))))
(assert (str.in_re z (re.++ (re.union (re.+ (str.to_re "9")) (str.to_re "472")) (re.range "3" "7"))))

(assert (< (+ (* (- 3) (str.len z)) (* 2 (str.to_int x)) (* 2 (str.to_int y)) (* (- 6) (str.to_int z))) 95))
(assert (= (+ (* 4 (str.to_int x)) (str.to_int y) (* 4 (str.to_int z))) 1))
(assert (< (+ (* (- 2) (str.to_int x)) (* (- 9) (str.to_int y)) (* 3 (str.to_int z))) 1))

(check-sat)
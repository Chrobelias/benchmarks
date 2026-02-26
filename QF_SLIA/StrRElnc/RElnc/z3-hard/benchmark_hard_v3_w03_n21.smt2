(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= z (str.++ x "45" y)))

(assert (str.in_re y (re.++ (re.union (re.union (re.range "7" "9") (re.* (str.to_re "580"))) (str.to_re "2")) (str.to_re "842"))))
(assert (str.in_re x (re.* (re.union (str.to_re "544") (str.to_re "73")))))
(assert (str.in_re z (re.union (re.* (re.range "1" "9")) (re.* (str.to_re "29")))))

(assert (>= (+ (* 8 (str.len x)) (* (- 8) (str.to_int y))) 42))
(assert (= (+ (* 2 (str.to_int x)) (* 5 (str.to_int y)) (* 10 (str.to_int z))) 91))

(check-sat)
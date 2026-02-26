(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= y (str.++ x z "65")))

(assert (str.in_re x (re.union (str.to_re "444") (re.* (str.to_re "1")))))
(assert (str.in_re y (re.* (re.union (re.++ (re.range "2" "7") (re.* (str.to_re "60"))) (str.to_re "364")))))
(assert (str.in_re z (re.* (re.range "0" "6"))))

(assert (= (+ (* (- 4) (str.len x)) (* 2 (str.len y)) (* (- 8) (str.len z))) 47))
(assert (<= (+ (* 10 (str.to_int x)) (* (- 5) (str.to_int y)) (* 8 (str.to_int z))) 71))

(check-sat)
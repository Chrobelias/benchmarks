(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ x z) (str.++ y "93")))

(assert (str.in_re z (re.++ (re.range "3" "7") (re.* (re.union (str.to_re "444") (str.to_re "773"))))))
(assert (str.in_re y (re.union (re.* (str.to_re "9")) (re.range "3" "7"))))
(assert (str.in_re x (re.* (re.union (str.to_re "438") (re.range "6" "9")))))

(assert (< (+ (* (- 7) (str.len x)) (* (- 8) (str.len y)) (* 7 (str.len z))) 79))
(assert (= (+ (* (- 9) (str.len x)) (* 8 (str.len y)) (* 8 (str.len z))) 25))
(assert (= (+ (* 7 (str.to_int y)) (* (- 5) (str.to_int z))) 57))

(check-sat)
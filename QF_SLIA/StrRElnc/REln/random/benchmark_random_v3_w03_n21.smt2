(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.++ (re.range "3" "5") (re.++ (re.* (str.to_re "339")) (re.* (str.to_re "972"))))))
(assert (str.in_re y (re.union (str.to_re "30") (re.++ (re.+ (re.* (str.to_re "851"))) (str.to_re "882")))))
(assert (str.in_re z (re.union (re.+ (str.to_re "1")) (re.range "6" "8"))))

(assert (<= (+ (* (- 10) (str.to_int x)) (* 4 (str.to_int y)) (* 4 (str.to_int z))) 34))
(assert (>= (+ (* 2 (str.to_int x)) (* (- 4) (str.to_int y)) (* 5 (str.to_int z))) 90))
(assert (< (+ (* (- 7) (str.len x)) (* (- 4) (str.len y)) (* (- 2) (str.len z))) 14))

(check-sat)
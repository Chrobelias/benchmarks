(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= x (str.++ y z "56")))

(assert (str.in_re x (re.union (re.* (re.+ (re.range "4" "7"))) (str.to_re "215"))))
(assert (str.in_re z (re.union (str.to_re "88") (re.+ (re.range "0" "7")))))
(assert (str.in_re y (re.union (str.to_re "54") (re.* (re.+ (re.range "7" "9"))))))

(assert (> (+ (* (- 2) (str.len x)) (* (- 5) (str.len y)) (* (- 8) (str.len z))) 89))
(assert (>= (+ (* (- 6) (str.to_int x)) (* (- 8) (str.to_int y)) (* 5 (str.to_int z))) 89))
(assert (< (* (- 4) (str.to_int y)) 76))

(check-sat)
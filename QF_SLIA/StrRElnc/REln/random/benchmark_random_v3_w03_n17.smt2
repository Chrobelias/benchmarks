(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.union (re.+ (str.to_re "380")) (str.to_re "719"))))
(assert (str.in_re y (re.+ (re.* (re.+ (re.range "1" "8"))))))
(assert (str.in_re x (re.union (str.to_re "921") (re.union (re.++ (str.to_re "531") (re.+ (re.range "2" "5"))) (str.to_re "952")))))

(assert (= (+ (* (- 9) (str.len x)) (* (- 9) (str.to_int y)) (* (- 2) (str.to_int z))) 59))
(assert (> (+ (* 10 (str.to_int y)) (* 4 (str.to_int z))) 86))

(check-sat)
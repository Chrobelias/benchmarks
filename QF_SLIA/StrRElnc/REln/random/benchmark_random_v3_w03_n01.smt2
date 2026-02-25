(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "87")) (re.range "3" "6"))))
(assert (str.in_re y (re.* (str.to_re "236"))))
(assert (str.in_re z (re.union (str.to_re "3") (re.union (str.to_re "56") (re.* (str.to_re "99"))))))

(assert (<= (+ (* 6 (str.len z)) (* (- 3) (str.to_int x)) (* (- 8) (str.to_int z))) 34))
(assert (<= (+ (* (- 4) (str.to_int x)) (* 4 (str.to_int y)) (* (- 7) (str.to_int z))) 10))

(check-sat)
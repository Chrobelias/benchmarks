(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.union (re.+ (str.to_re "807")) (re.union (re.+ (str.to_re "732")) (re.range "4" "7")))))
(assert (str.in_re y (re.union (str.to_re "75") (re.++ (str.to_re "11") (re.+ (str.to_re "838"))))))
(assert (str.in_re z (re.union (re.+ (str.to_re "6")) (str.to_re "59"))))

(assert (<= (+ (* (- 6) (str.len z)) (* 3 (str.to_int y))) 11))
(assert (>= (+ (* 7 (str.len x)) (* (- 6) (str.len y)) (* (- 7) (str.len z))) 76))

(check-sat)
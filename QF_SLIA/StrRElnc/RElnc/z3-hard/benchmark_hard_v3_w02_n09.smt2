(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= x (str.++ "42" z y)))

(assert (str.in_re z (re.* (re.union (str.to_re "21") (re.* (re.range "3" "8"))))))
(assert (str.in_re y (re.+ (re.+ (str.to_re "74")))))
(assert (str.in_re x (re.+ (re.union (re.range "0" "2") (re.* (re.* (re.range "2" "7")))))))

(assert (<= (+ (* 8 (str.to_int y)) (* (- 4) (str.to_int z))) 24))
(assert (>= (+ (* 9 (str.len x)) (* (- 4) (str.len z))) 48))

(check-sat)
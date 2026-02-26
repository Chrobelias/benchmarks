(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))

(assert (= (str.++ y x) (str.++ "65" z)))

(assert (str.in_re y (re.++ (re.++ (re.range "5" "7") (re.* (str.to_re "934"))) (str.to_re "5"))))
(assert (str.in_re x (re.+ (re.union (re.* (str.to_re "1")) (re.* (str.to_re "33"))))))
(assert (str.in_re z (re.union (str.to_re "120") (re.+ (re.* (str.to_re "33"))))))

(assert (< (+ (* 3 (str.to_int x)) (* (- 3) (str.to_int y)) (* 7 (str.to_int z))) 20))
(assert (<= (+ (* (- 2) (str.len z)) (* 6 (str.to_int y))) 89))

(check-sat)
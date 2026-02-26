(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ x y) (str.++ "33" z)))

(assert (str.in_re y (re.++ (re.union (str.to_re "30") (re.* (re.* (str.to_re "17")))) (re.range "2" "4"))))
(assert (str.in_re z (re.union (str.to_re "9") (re.++ (re.range "2" "5") (re.* (str.to_re "86"))))))
(assert (str.in_re x (re.union (str.to_re "6") (re.* (re.* (re.range "3" "8"))))))

(assert (>= (+ (* (- 8) (str.len z)) (* 2 (str.to_int y))) 66))

(check-sat)
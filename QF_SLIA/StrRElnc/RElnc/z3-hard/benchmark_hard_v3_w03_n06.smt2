(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y x) (str.++ "12" z)))

(assert (str.in_re x (re.++ (re.* (str.to_re "1")) (re.range "5" "7"))))
(assert (str.in_re y (re.* (re.* (re.* (re.range "0" "6"))))))
(assert (str.in_re z (re.++ (str.to_re "651") (re.* (re.union (re.range "5" "8") (re.range "3" "5"))))))

(assert (> (+ (* (- 10) (str.len x)) (str.to_int x) (* (- 4) (str.to_int y))) 36))
(assert (> (+ (* (- 9) (str.to_int x)) (* 10 (str.to_int y)) (* 7 (str.to_int z))) 73))

(check-sat)
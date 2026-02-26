(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= (str.++ y "87") (str.++ x "15" z)))

(assert (str.in_re x (re.++ (re.++ (str.to_re "7") (str.to_re "666")) (re.* (str.to_re "524")))))
(assert (str.in_re z (re.union (str.to_re "7") (re.union (str.to_re "45") (re.* (re.range "4" "9"))))))
(assert (str.in_re y (re.union (re.union (str.to_re "640") (re.* (re.range "1" "8"))) (re.range "4" "9"))))

(assert (>= (+ (* 5 (str.len x)) (* (- 10) (str.len y)) (* (- 5) (str.len z))) 96))
(assert (= (+ (* (- 7) (str.to_int x)) (* 10 (str.to_int y)) (* 6 (str.to_int z))) 42))

(check-sat)
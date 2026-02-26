(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= a (str.++ y x "34" "53" z)))

(assert (str.in_re a (re.+ (re.range "0" "5"))))
(assert (str.in_re z (re.++ (re.union (str.to_re "45") (re.* (re.+ (str.to_re "2")))) (str.to_re "2"))))
(assert (str.in_re y (re.* (re.* (re.++ (re.* (str.to_re "93")) (str.to_re "0"))))))
(assert (str.in_re x (re.union (str.to_re "613") (re.union (str.to_re "831") (re.* (str.to_re "3"))))))

(assert (> (+ (* 6 (str.len x)) (* 10 (str.len y)) (* 8 (str.len z)) (* 3 (str.len a))) 46))
(assert (>= (+ (* (- 7) (str.to_int x)) (* (- 9) (str.to_int y)) (* (- 4) (str.to_int z)) (* (- 5) (str.to_int a))) 11))

(check-sat)
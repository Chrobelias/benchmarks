(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re z (re.union (re.* (re.++ (re.range "7" "9") (re.* (str.to_re "98")))) (str.to_re "422"))))
(assert (str.in_re x (re.++ (str.to_re "245") (re.+ (re.union (str.to_re "3") (str.to_re "86"))))))
(assert (str.in_re a (re.* (str.to_re "7"))))
(assert (str.in_re y (re.+ (re.* (re.union (str.to_re "118") (re.* (str.to_re "542")))))))

(assert (< (+ (* 8 (str.len x)) (* 10 (str.len y)) (* (- 9) (str.len a))) 83))
(assert (= (+ (* 6 (str.to_int x)) (* 9 (str.to_int y)) (* 2 (str.to_int z)) (* 3 (str.to_int a))) 20))

(check-sat)
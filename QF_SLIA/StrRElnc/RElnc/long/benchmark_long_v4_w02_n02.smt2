(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len a) 1000))
(assert (>= (str.len x) 1000))

(assert (= x (str.++ "69" z "23" a y "41")))

(assert (str.in_re a (re.+ (str.to_re "370"))))
(assert (str.in_re y (re.* (str.to_re "60"))))
(assert (str.in_re z (re.* (re.union (str.to_re "25") (re.union (str.to_re "8") (str.to_re "98"))))))
(assert (str.in_re x (re.union (re.* (re.range "0" "9")) (re.range "6" "8"))))

(assert (= (+ (* 3 (str.len x)) (* 10 (str.len y)) (* 10 (str.len z)) (* 7 (str.len a))) 58))
(assert (>= (+ (* 2 (str.to_int x)) (* 3 (str.to_int y)) (* 7 (str.to_int z)) (* 3 (str.to_int a))) 36))

(check-sat)
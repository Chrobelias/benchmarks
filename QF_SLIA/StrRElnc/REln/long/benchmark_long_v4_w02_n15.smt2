(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))

(assert (str.in_re z (re.union (str.to_re "34") (re.* (re.range "1" "6")))))
(assert (str.in_re a (re.union (re.union (re.union (re.+ (str.to_re "83")) (str.to_re "46")) (str.to_re "879")) (str.to_re "642"))))
(assert (str.in_re x (re.++ (re.+ (str.to_re "70")) (re.+ (str.to_re "39")))))
(assert (str.in_re y (re.+ (re.* (str.to_re "251")))))

(assert (>= (+ (* (- 5) (str.to_int x)) (* (- 5) (str.to_int y)) (* (- 8) (str.to_int z)) (* 8 (str.to_int a))) 15))
(assert (> (+ (* 6 (str.len x)) (* (- 5) (str.len y)) (* (- 3) (str.len z)) (* 5 (str.len a))) 88))

(check-sat)
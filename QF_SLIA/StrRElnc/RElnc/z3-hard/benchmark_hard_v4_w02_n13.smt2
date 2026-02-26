(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ x a) (str.++ z y "46")))

(assert (str.in_re x (re.union (re.* (re.range "3" "7")) (str.to_re "30"))))
(assert (str.in_re a (re.* (re.union (str.to_re "532") (re.union (re.+ (re.range "2" "8")) (str.to_re "69"))))))
(assert (str.in_re z (re.+ (re.++ (str.to_re "35") (re.* (str.to_re "0"))))))
(assert (str.in_re y (re.* (re.union (str.to_re "7") (str.to_re "38")))))

(assert (= (+ (* 10 (str.to_int x)) (* 2 (str.to_int y)) (* (- 9) (str.to_int z)) (* (- 9) (str.to_int a))) 36))
(assert (>= (+ (* (- 3) (str.len x)) (* 5 (str.len y)) (* 5 (str.len z)) (* 2 (str.len a))) 12))

(check-sat)
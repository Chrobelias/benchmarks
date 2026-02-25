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
(assert (>= (str.len a) 1000))
(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))

(assert (str.in_re a (re.+ (re.++ (str.to_re "0") (re.++ (str.to_re "638") (re.+ (str.to_re "65")))))))
(assert (str.in_re z (re.union (str.to_re "526") (re.+ (re.union (re.+ (str.to_re "89")) (str.to_re "31"))))))
(assert (str.in_re x (re.++ (str.to_re "76") (re.* (re.* (str.to_re "0"))))))
(assert (str.in_re y (re.* (re.+ (str.to_re "597")))))

(assert (= (+ (* (- 4) (str.len x)) (* (- 5) (str.len y)) (* (- 6) (str.len z)) (* (- 7) (str.len a))) 27))
(assert (= (+ (* (- 9) (str.to_int x)) (* 4 (str.to_int z)) (* (- 6) (str.to_int a))) 55))

(check-sat)
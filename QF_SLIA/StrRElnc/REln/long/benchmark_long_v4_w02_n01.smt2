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

(assert (str.in_re x (re.+ (re.++ (str.to_re "412") (re.++ (re.* (str.to_re "62")) (str.to_re "208"))))))
(assert (str.in_re z (re.union (re.++ (str.to_re "510") (re.+ (str.to_re "95"))) (str.to_re "2"))))
(assert (str.in_re a (re.+ (re.++ (str.to_re "0") (str.to_re "731")))))
(assert (str.in_re y (re.++ (re.++ (str.to_re "87") (str.to_re "9")) (re.+ (str.to_re "4")))))

(assert (<= (+ (* 4 (str.to_int x)) (* (- 4) (str.to_int y)) (* (- 4) (str.to_int z)) (* 6 (str.to_int a))) 66))
(assert (> (+ (* 2 (str.len x)) (* (- 5) (str.len y)) (* (- 2) (str.len z)) (* (- 5) (str.len a))) 61))

(check-sat)
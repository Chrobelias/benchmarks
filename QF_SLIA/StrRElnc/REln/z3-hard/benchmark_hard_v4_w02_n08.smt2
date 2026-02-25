(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.+ (str.to_re "5"))))
(assert (str.in_re y (re.++ (re.union (str.to_re "36") (re.+ (str.to_re "805"))) (str.to_re "4"))))
(assert (str.in_re a (re.+ (re.++ (str.to_re "79") (str.to_re "636")))))
(assert (str.in_re z (re.+ (str.to_re "15"))))

(assert (<= (+ (* (- 6) (str.len x)) (* 9 (str.len y)) (* (- 5) (str.len a)) (* 9 (str.to_int y))) 5))

(check-sat)
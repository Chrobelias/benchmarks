(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "99" y)))

(assert (str.in_re y (re.+ (re.++ (re.* (str.to_re "99")) (re.* (str.to_re "151"))))))
(assert (str.in_re x (re.union (re.* (re.range "5" "9")) (re.++ (re.* (str.to_re "261")) (str.to_re "399")))))

(assert (= (+ (* (- 3) (str.len x)) (* 2 (str.to_int y))) 2))
(assert (= (+ (* (- 3) (str.len y)) (* 2 (str.to_int x)) (* 7 (str.to_int y))) 39))

(check-sat)
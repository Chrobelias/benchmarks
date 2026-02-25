(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "61" y)))

(assert (str.in_re y (re.+ (re.range "7" "9"))))
(assert (str.in_re x (re.+ (re.++ (str.to_re "618") (re.* (str.to_re "721"))))))

(assert (< (+ (* 3 (str.to_int x)) (* (- 10) (str.to_int y))) 39))
(assert (<= (+ (* (- 9) (str.len x)) (* (- 6) (str.len y))) 46))
(assert (> (+ (* 5 (str.len x)) (* (- 9) (str.len y))) 91))

(check-sat)
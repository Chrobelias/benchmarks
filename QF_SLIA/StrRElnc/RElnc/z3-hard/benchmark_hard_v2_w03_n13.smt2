(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "17" y)))

(assert (str.in_re x (re.+ (re.range "0" "9"))))
(assert (str.in_re y (re.++ (str.to_re "164") (re.++ (re.+ (re.range "4" "9")) (re.* (str.to_re "174"))))))

(assert (= (+ (* 8 (str.to_int x)) (* (- 6) (str.to_int y))) 74))
(assert (<= (+ (* (- 4) (str.len x)) (* (- 6) (str.len y)) (* 2 (str.to_int x)) (* (- 4) (str.to_int y))) 100))

(check-sat)
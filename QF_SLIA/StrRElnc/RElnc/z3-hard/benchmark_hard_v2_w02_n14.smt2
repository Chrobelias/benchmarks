(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "57")))

(assert (str.in_re x (re.+ (re.* (re.union (str.to_re "26") (str.to_re "466"))))))
(assert (str.in_re y (re.+ (re.* (re.+ (re.+ (re.range "1" "9")))))))

(assert (<= (+ (* 10 (str.to_int x)) (* (- 10) (str.to_int y))) 70))
(assert (>= (+ (* 7 (str.len x)) (* (- 6) (str.len y))) 96))

(check-sat)
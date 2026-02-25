(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "82")))

(assert (str.in_re y (re.* (re.* (re.++ (re.* (str.to_re "74")) (re.range "3" "6"))))))
(assert (str.in_re x (re.* (re.+ (re.+ (re.+ (re.range "2" "9")))))))

(assert (= (+ (* (- 6) (str.len x)) (* (- 10) (str.len y))) 52))
(assert (<= (+ (* 5 (str.to_int x)) (* 6 (str.to_int y))) 68))
(assert (>= (+ (* 8 (str.to_int x)) (* (- 7) (str.to_int y))) 13))

(check-sat)
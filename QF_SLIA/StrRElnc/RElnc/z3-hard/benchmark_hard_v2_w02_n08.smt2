(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "35" x)))

(assert (str.in_re x (re.* (re.* (re.* (re.* (str.to_re "5")))))))
(assert (str.in_re y (re.+ (re.* (re.range "2" "7")))))

(assert (<= (+ (* 7 (str.len x)) (* (- 9) (str.len y))) 39))
(assert (>= (+ (* 6 (str.to_int x)) (* (- 9) (str.to_int y))) 76))

(check-sat)
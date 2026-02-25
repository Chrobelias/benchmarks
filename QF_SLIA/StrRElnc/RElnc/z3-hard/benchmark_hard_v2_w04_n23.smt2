(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ "12" y) (str.++ x "41")))

(assert (str.in_re y (re.+ (re.++ (re.range "4" "8") (re.union (str.to_re "756") (re.range "0" "9"))))))
(assert (str.in_re x (re.+ (re.* (re.+ (re.* (re.range "1" "8")))))))

(assert (< (+ (* (- 10) (str.len x)) (* 3 (str.len y))) 36))
(assert (< (+ (* (- 10) (str.to_int x)) (* 8 (str.to_int y))) 100))
(assert (= (+ (* 2 (str.len x)) (* 2 (str.len y)) (* (- 3) (str.to_int y))) 60))

(check-sat)
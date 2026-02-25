(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.++ (str.to_re "492") (re.+ (re.range "5" "8"))) (str.to_re "1"))))
(assert (str.in_re y (re.+ (re.* (re.union (str.to_re "66") (str.to_re "53"))))))

(assert (< (+ (* 8 (str.len x)) (* (- 4) (str.len y))) 48))
(assert (<= (+ (* 9 (str.to_int x)) (* (- 9) (str.to_int y))) 8))
(assert (> (+ (* 3 (str.len x)) (* (- 8) (str.len y))) 0))

(check-sat)
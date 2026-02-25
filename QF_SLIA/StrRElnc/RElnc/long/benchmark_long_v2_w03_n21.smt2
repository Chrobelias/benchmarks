(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= x (str.++ "22" y)))

(assert (str.in_re x (re.* (re.* (re.union (str.to_re "29") (re.+ (re.range "0" "9")))))))
(assert (str.in_re y (re.+ (re.++ (re.++ (str.to_re "17") (re.* (str.to_re "63"))) (str.to_re "51")))))

(assert (<= (+ (* 9 (str.len x)) (* (- 2) (str.len y))) 47))
(assert (= (+ (* 2 (str.to_int x)) (* 7 (str.to_int y))) 32))
(assert (< (+ (* (- 3) (str.len x)) (* 2 (str.len y))) 94))

(check-sat)